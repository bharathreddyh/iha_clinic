import 'package:flutter/material.dart';
import '../../../core/models/module.dart';
import '../../../core/widgets/hospital_app_bar.dart';

class ModuleDetailScreen extends StatefulWidget {
  final Module module;

  const ModuleDetailScreen({super.key, required this.module});

  @override
  State<ModuleDetailScreen> createState() => _ModuleDetailScreenState();
}

class _ModuleDetailScreenState extends State<ModuleDetailScreen> {
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

  String _language = 'en';

  Color get _themeColor => _colorMap[widget.module.icon] ?? Colors.blueGrey;

  bool get _hasKannada {
    final content = widget.module.content;
    if (content.containsKey('sections_kn')) {
      final sections = content['sections_kn'];
      return sections is List && sections.isNotEmpty;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final color = _themeColor;
    final sections = _parseSections();

    return Scaffold(
      appBar: hospitalAppBar(
        context,
        title: widget.module.name,
        backgroundColor: color.withValues(alpha: 0.15),
        foregroundColor: color,
        actions: [
          if (_hasKannada) _buildLanguageToggle(),
          if (_hasKannada) const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
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
                          _iconMap[widget.module.icon] ?? Icons.book,
                          size: 36,
                          color: color,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        widget.module.name,
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
                        widget.module.description,
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

  Widget _buildLanguageToggle() {
    return Container(
      decoration: BoxDecoration(
        color: _themeColor.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildLangChip('en', 'English'),
          _buildLangChip('kn', 'ಕನ್ನಡ'),
        ],
      ),
    );
  }

  Widget _buildLangChip(String code, String label) {
    final isSelected = _language == code;
    return GestureDetector(
      onTap: () {
        if (_language != code) {
          setState(() => _language = code);
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? _themeColor : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : _themeColor,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            fontSize: 13,
          ),
        ),
      ),
    );
  }

  List<Map<String, dynamic>> _parseSections() {
    final content = widget.module.content;
    final key = (_language == 'kn' && _hasKannada) ? 'sections_kn' : 'sections';
    if (content.containsKey(key)) {
      final sections = content[key];
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
