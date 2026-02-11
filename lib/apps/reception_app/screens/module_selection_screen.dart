import 'package:flutter/material.dart';
import '../../../core/models/module.dart';
import '../../../core/services/database_service.dart';
import 'confirmation_screen.dart';

class ModuleSelectionScreen extends StatefulWidget {
  final String mobile;

  const ModuleSelectionScreen({super.key, required this.mobile});

  @override
  State<ModuleSelectionScreen> createState() => _ModuleSelectionScreenState();
}

class _ModuleSelectionScreenState extends State<ModuleSelectionScreen> {
  final DatabaseService _dbService = DatabaseService();
  List<Module> _modules = [];
  final Set<String> _selectedModuleIds = {};
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

  @override
  void initState() {
    super.initState();
    _loadModules();
  }

  Future<void> _loadModules() async {
    try {
      final modules = await _dbService.getAllModules();
      setState(() {
        _modules = modules;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = 'Failed to load modules. Please try again.';
        _isLoading = false;
      });
    }
  }

  void _proceed() {
    if (_selectedModuleIds.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select at least one module')),
      );
      return;
    }

    final selectedModules =
        _modules.where((m) => _selectedModuleIds.contains(m.id)).toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ConfirmationScreen(
          mobile: widget.mobile,
          selectedModules: selectedModules,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Modules'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _error != null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(_error!, style: const TextStyle(color: Colors.red)),
                      const SizedBox(height: 16),
                      FilledButton(
                        onPressed: () {
                          setState(() {
                            _isLoading = true;
                            _error = null;
                          });
                          _loadModules();
                        },
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                )
              : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        'Select health education modules for ${widget.mobile}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: _modules.length,
                        itemBuilder: (context, index) {
                          final module = _modules[index];
                          final isSelected =
                              _selectedModuleIds.contains(module.id);
                          return Card(
                            margin: const EdgeInsets.only(bottom: 8),
                            child: CheckboxListTile(
                              value: isSelected,
                              onChanged: (checked) {
                                setState(() {
                                  if (checked == true) {
                                    _selectedModuleIds.add(module.id);
                                  } else {
                                    _selectedModuleIds.remove(module.id);
                                  }
                                });
                              },
                              title: Text(
                                module.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600),
                              ),
                              subtitle: Text(module.description),
                              secondary: CircleAvatar(
                                backgroundColor: isSelected
                                    ? Theme.of(context).colorScheme.primary
                                    : Colors.grey[300],
                                child: Icon(
                                  _iconMap[module.icon] ?? Icons.book,
                                  color:
                                      isSelected ? Colors.white : Colors.grey,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: SizedBox(
                        width: double.infinity,
                        child: FilledButton.icon(
                          onPressed: _proceed,
                          icon: const Icon(Icons.check),
                          label: Text(
                            'Continue (${_selectedModuleIds.length} selected)',
                          ),
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
    );
  }
}
