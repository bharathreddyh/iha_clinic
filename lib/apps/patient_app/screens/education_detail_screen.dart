import 'package:flutter/material.dart';
import '../../../core/widgets/hospital_app_bar.dart';
import '../data/education_content.dart';

class EducationDetailScreen extends StatefulWidget {
  final String topicId;

  const EducationDetailScreen({super.key, required this.topicId});

  @override
  State<EducationDetailScreen> createState() => _EducationDetailScreenState();
}

class _EducationDetailScreenState extends State<EducationDetailScreen> {
  static const Color _themeColor = Color(0xFF00838F);

  String _language = 'en';

  EducationTopicData? get _topic => educationTopics[widget.topicId];

  List<Map<String, String>> get _sections {
    final topic = _topic;
    if (topic == null) return [];
    if (_language == 'kn' && topic.sectionsKn.isNotEmpty) {
      return topic.sectionsKn;
    }
    return topic.sectionsEn;
  }

  String get _appBarTitle {
    final topic = _topic;
    if (topic == null) return 'Education';
    if (_language == 'kn' && topic.titleKn != null) return topic.titleKn!;
    return topic.titleEn;
  }

  bool get _hasKannada =>
      _topic != null && _topic!.sectionsKn.isNotEmpty;

  static const Map<String, Map<String, String>> _labels = {
    'en': {
      'sectionHeader': 'About This Condition',
      'disclaimer':
          'This content is for educational purposes only and does not replace professional medical advice. Always consult your doctor for diagnosis and treatment.',
    },
    'kn': {
      'sectionHeader': 'ಈ ಸ್ಥಿತಿಯ ಬಗ್ಗೆ',
      'disclaimer':
          'ಈ ಮಾಹಿತಿಯು ಕೇವಲ ಶೈಕ್ಷಣಿಕ ಉದ್ದೇಶಗಳಿಗಾಗಿ ಮಾತ್ರ ಮತ್ತು ವೃತ್ತಿಪರ ವೈದ್ಯಕೀಯ ಸಲಹೆಯನ್ನು ಬದಲಿಸುವುದಿಲ್ಲ. ರೋಗನಿರ್ಣಯ ಮತ್ತು ಚಿಕಿತ್ಸೆಗಾಗಿ ಯಾವಾಗಲೂ ನಿಮ್ಮ ವೈದ್ಯರನ್ನು ಸಂಪರ್ಕಿಸಿ.',
    },
  };

  String _label(String key) => _labels[_language]?[key] ?? _labels['en']![key]!;

  @override
  Widget build(BuildContext context) {
    if (_topic == null) {
      return Scaffold(
        appBar: hospitalAppBar(
          context,
          title: 'Not Found',
          backgroundColor: const Color(0xFF0D1B2A),
          foregroundColor: Colors.white,
        ),
        body: const Center(child: Text('Topic not found.')),
      );
    }

    return Scaffold(
      appBar: hospitalAppBar(
        context,
        title: _appBarTitle,
        backgroundColor: const Color(0xFF0D1B2A),
        foregroundColor: Colors.white,
        actions: [
          _buildLanguageToggle(),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildContentSections(context),
                _buildDisclaimer(context),
                const SizedBox(height: 24),
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
    final isDisabled = code == 'kn' && !_hasKannada;
    return GestureDetector(
      onTap: () {
        if (isDisabled) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Kannada translation is not yet available for this topic'),
              duration: Duration(seconds: 2),
            ),
          );
          return;
        }
        if (_language != code) {
          setState(() => _language = code);
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected && !isDisabled ? _themeColor : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isDisabled
                ? _themeColor.withValues(alpha: 0.35)
                : isSelected
                    ? Colors.white
                    : _themeColor,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            fontSize: 13,
          ),
        ),
      ),
    );
  }

  Widget _buildContentSections(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8, left: 4, top: 8),
            child: Text(
              _label('sectionHeader'),
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: _themeColor,
                  ),
            ),
          ),
          ..._sections.asMap().entries.map((entry) {
            final index = entry.key;
            final section = entry.value;
            return Card(
              margin: const EdgeInsets.only(bottom: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ExpansionTile(
                initiallyExpanded: index == 0,
                leading: CircleAvatar(
                  radius: 16,
                  backgroundColor: _themeColor.withValues(alpha: 0.1),
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      color: _themeColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ),
                title: Text(
                  section['title']!,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: Text(
                      section['body']!,
                      style: const TextStyle(
                        fontSize: 15,
                        height: 1.6,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildDisclaimer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: Card(
        color: Colors.amber[50],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.info_outline, color: Colors.amber[800], size: 22),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  _label('disclaimer'),
                  style: TextStyle(
                    color: Colors.amber[900],
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
