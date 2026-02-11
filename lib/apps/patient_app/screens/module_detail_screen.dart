import 'package:flutter/material.dart';
import '../../../core/models/module.dart';

class ModuleDetailScreen extends StatelessWidget {
  final Module module;

  const ModuleDetailScreen({super.key, required this.module});

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
  Widget build(BuildContext context) {
    final color = _colorMap[module.icon] ?? Colors.blueGrey;
    final sections = _parseSections();

    return Scaffold(
      appBar: AppBar(
        title: Text(module.name),
        backgroundColor: color.withValues(alpha: 0.15),
        foregroundColor: color,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Header
                Container(
                  color: color.withValues(alpha: 0.08),
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 36,
                        backgroundColor: color.withValues(alpha: 0.15),
                        child: Icon(
                          _iconMap[module.icon] ?? Icons.book,
                          size: 36,
                          color: color,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        module.name,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: color,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        module.description,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                // Content sections
                if (sections.isEmpty)
                  const Padding(
                    padding: EdgeInsets.all(32),
                    child: Center(
                      child: Text(
                        'Content coming soon.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: sections.asMap().entries.map((entry) {
                        final index = entry.key;
                        final section = entry.value;
                        return Card(
                          margin: const EdgeInsets.only(bottom: 12),
                          child: ExpansionTile(
                            initiallyExpanded: index == 0,
                            leading: CircleAvatar(
                              radius: 16,
                              backgroundColor: color.withValues(alpha: 0.1),
                              child: Text(
                                '${index + 1}',
                                style: TextStyle(
                                  color: color,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            title: Text(
                              section['title'] ?? 'Section ${index + 1}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600),
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    section['body'] ?? '',
                                    style: const TextStyle(
                                      fontSize: 15,
                                      height: 1.6,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Map<String, dynamic>> _parseSections() {
    final content = module.content;
    if (content.containsKey('sections')) {
      final sections = content['sections'];
      if (sections is List) {
        final parsed = sections
            .map((s) => s is Map<String, dynamic> ? s : <String, dynamic>{})
            .toList();
        parsed.sort((a, b) =>
            ((a['order'] as num?) ?? 0).compareTo((b['order'] as num?) ?? 0));
        return parsed;
      }
    }
    return [];
  }
}
