import 'package:flutter/material.dart';
import '../../../core/models/module.dart';
import '../../../core/models/registration.dart';
import '../../../core/services/database_service.dart';
import '../../../core/config/app_config.dart';
import 'module_detail_screen.dart';

class ModulesListScreen extends StatefulWidget {
  final String token;

  const ModulesListScreen({super.key, required this.token});

  @override
  State<ModulesListScreen> createState() => _ModulesListScreenState();
}

class _ModulesListScreenState extends State<ModulesListScreen> {
  final DatabaseService _dbService = DatabaseService();
  List<Module> _modules = [];
  bool _isLoading = true;
  String? _error;

  static const Map<String, IconData> _iconMap = {
    'local_hospital': Icons.local_hospital,
    'favorite': Icons.favorite,
    'health_and_safety': Icons.health_and_safety,
    'monitor_heart': Icons.monitor_heart,
    'water_drop': Icons.water_drop,
    'medication': Icons.medication,
    'psychology': Icons.psychology,
    'book': Icons.book,
  };

  static const Map<String, Color> _colorMap = {
    'local_hospital': Color(0xFF1565C0),
    'favorite': Color(0xFFC62828),
    'health_and_safety': Color(0xFF2E7D32),
    'monitor_heart': Color(0xFFAD1457),
    'water_drop': Color(0xFF00838F),
    'medication': Color(0xFF6A1B9A),
    'psychology': Color(0xFFEF6C00),
    'book': Color(0xFF37474F),
  };

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      final registration =
          await _dbService.getRegistrationByToken(widget.token);

      if (registration == null) {
        setState(() {
          _error = 'Invalid or expired access link. Please contact your clinic.';
          _isLoading = false;
        });
        return;
      }

      if (registration.expiresAt.isBefore(DateTime.now())) {
        setState(() {
          _error =
              'This access link has expired. Please contact your clinic for a new link.';
          _isLoading = false;
        });
        return;
      }

      await _dbService.markAsAccessed(registration.id);

      final modules =
          await _dbService.getModulesByIds(registration.moduleIds);

      setState(() {
        _modules = modules;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = 'Something went wrong. Please try again.';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appConfig.clinicName),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: false,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _error != null
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.error_outline,
                            size: 64, color: Colors.red),
                        const SizedBox(height: 16),
                        Text(
                          _error!,
                          style: Theme.of(context).textTheme.titleMedium,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              : SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              'Your Health Education',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                          Text(
                            'Tap a module to learn more',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          const SizedBox(height: 16),
                          ..._modules.map((module) {
                            final color =
                                _colorMap[module.icon] ?? Colors.blueGrey;
                            return Card(
                              margin: const EdgeInsets.only(bottom: 12),
                              clipBehavior: Clip.antiAlias,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) =>
                                          ModuleDetailScreen(module: module),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 28,
                                        backgroundColor:
                                            color.withValues(alpha: 0.1),
                                        child: Icon(
                                          _iconMap[module.icon] ?? Icons.book,
                                          color: color,
                                          size: 28,
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              module.name,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                              ),
                                            ),
                                            const SizedBox(height: 4),
                                            Text(
                                              module.description,
                                              style: TextStyle(
                                                color: Colors.grey[600],
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        color: Colors.grey[400],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
    );
  }
}
