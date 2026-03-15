import 'package:flutter/material.dart';
import '../../../core/widgets/hospital_app_bar.dart';

class SimpleCystScreen extends StatefulWidget {
  const SimpleCystScreen({super.key});

  @override
  State<SimpleCystScreen> createState() => _SimpleCystScreenState();
}

class _SimpleCystScreenState extends State<SimpleCystScreen> {
  static const Color _themeColor = Color(0xFF00838F);

  String _language = 'en';

  // ---------- English content ----------
  static const List<Map<String, String>> _sectionsEn = [
    {
      'title': 'What is a Simple Ovarian Cyst?',
      'body':
          'A simple ovarian cyst is a fluid-filled sac that develops on or inside an ovary. These are the most common type of ovarian cysts and are almost always benign (non-cancerous).\n\n'
              'Simple cysts are also called "functional cysts" because they form as a normal part of the menstrual cycle. They are very common in women of reproductive age and most resolve on their own without treatment.',
    },
    {
      'title': 'Causes & Risk Factors',
      'body':
          'Simple ovarian cysts usually form during the normal menstrual cycle. There are two main types:\n\n'
              'Follicular cysts:\n'
              '• Form when the follicle does not rupture to release an egg\n'
              '• The follicle continues to grow and fills with fluid\n'
              '• Most common type of ovarian cyst\n\n'
              'Corpus luteum cysts:\n'
              '• Form after the egg is released\n'
              '• The follicle seals off and fills with fluid\n'
              '• Usually resolve within a few weeks\n\n'
              'Risk factors include:\n'
              '• Hormonal imbalances\n'
              '• Previous ovarian cysts\n'
              '• Fertility drug use (e.g., clomiphene)\n'
              '• Endometriosis\n'
              '• Pelvic infections',
    },
    {
      'title': 'Symptoms',
      'body':
          'Most simple ovarian cysts cause no symptoms and are discovered incidentally during a routine ultrasound or pelvic exam. When symptoms occur, they may include:\n\n'
              '• Mild pelvic pain or a dull ache on one side\n'
              '• Bloating or a sense of fullness in the abdomen\n'
              '• Pain during menstruation\n'
              '• Pain during intercourse\n'
              '• A feeling of pressure on the bladder or rectum\n\n'
              'Sudden, severe pain may indicate cyst rupture or torsion — seek immediate medical attention.',
    },
    {
      'title': 'Diagnosis',
      'body':
          'Simple ovarian cysts are typically diagnosed using:\n\n'
              '1. Pelvic ultrasound — the primary tool. A simple cyst appears as a round, thin-walled, fluid-filled structure with no internal echoes or solid components.\n\n'
              '2. Transvaginal ultrasound — provides a closer, clearer image of the ovaries.\n\n'
              '3. Blood tests — may include CA-125 (tumour marker) in postmenopausal women or if the cyst looks complex.\n\n'
              '4. Follow-up imaging — a repeat ultrasound in 6–8 weeks is often recommended to confirm resolution.',
    },
    {
      'title': 'Treatment Options',
      'body':
          'Treatment depends on cyst size, symptoms, and the patient\'s age.\n\n'
              'Watchful waiting (most common):\n'
              '• Most simple cysts resolve on their own within 1–3 menstrual cycles\n'
              '• Follow-up ultrasound to monitor progress\n\n'
              'Medications:\n'
              '• Pain relievers (NSAIDs) for discomfort\n'
              '• Hormonal contraceptives may be prescribed to prevent formation of new cysts\n\n'
              'Surgery (rarely needed):\n'
              '• Considered if the cyst is large (>5–7 cm), persistent, or causing significant symptoms\n'
              '• Laparoscopic cystectomy (cyst removal) is the preferred approach\n'
              '• In postmenopausal women, persistent cysts may warrant further investigation',
    },
    {
      'title': 'When to See a Doctor',
      'body':
          'Contact your doctor if you experience:\n\n'
              '• Persistent or worsening pelvic pain\n'
              '• Sudden, severe abdominal pain\n'
              '• Pain with nausea, vomiting, or fever\n'
              '• Dizziness, weakness, or fainting\n'
              '• Abdominal bloating that does not go away\n\n'
              'These symptoms may indicate a ruptured cyst, ovarian torsion, or another condition requiring prompt evaluation.',
    },
  ];

  // ---------- Kannada content ----------
  static const List<Map<String, String>> _sectionsKn = [
    {
      'title': 'ಸರಳ ಅಂಡಾಶಯದ ಚೀಲ (ಸಿಸ್ಟ್) ಎಂದರೇನು?',
      'body':
          'ಸರಳ ಅಂಡಾಶಯದ ಚೀಲವು ಅಂಡಾಶಯದ ಮೇಲೆ ಅಥವಾ ಒಳಗೆ ಬೆಳೆಯುವ ದ್ರವ ತುಂಬಿದ ಚೀಲವಾಗಿದೆ. ಇವು ಅತ್ಯಂತ ಸಾಮಾನ್ಯ ವಿಧದ ಅಂಡಾಶಯದ ಚೀಲಗಳಾಗಿವೆ ಮತ್ತು ಬಹುತೇಕ ಯಾವಾಗಲೂ ಹಾನಿಕರವಲ್ಲ.\n\n'
              'ಇವುಗಳನ್ನು "ಕ್ರಿಯಾತ್ಮಕ ಚೀಲಗಳು" ಎಂದೂ ಕರೆಯಲಾಗುತ್ತದೆ ಏಕೆಂದರೆ ಇವು ಋತುಚಕ್ರದ ಸಾಮಾನ್ಯ ಭಾಗವಾಗಿ ರೂಪುಗೊಳ್ಳುತ್ತವೆ. ಹೆಚ್ಚಿನವು ಯಾವುದೇ ಚಿಕಿತ್ಸೆಯಿಲ್ಲದೆ ತಾವಾಗಿಯೇ ಕರಗಿಹೋಗುತ್ತವೆ.',
    },
    {
      'title': 'ಕಾರಣಗಳು ಮತ್ತು ಅಪಾಯಕಾರಿ ಅಂಶಗಳು',
      'body':
          'ಸರಳ ಅಂಡಾಶಯದ ಚೀಲಗಳು ಸಾಮಾನ್ಯವಾಗಿ ಋತುಚಕ್ರದ ಸಮಯದಲ್ಲಿ ರೂಪುಗೊಳ್ಳುತ್ತವೆ. ಎರಡು ಮುಖ್ಯ ವಿಧಗಳಿವೆ:\n\n'
              'ಫೋಲಿಕ್ಯುಲರ್ ಚೀಲಗಳು:\n'
              '• ಫೋಲಿಕಲ್ ಒಡೆದು ಅಂಡವನ್ನು ಬಿಡುಗಡೆ ಮಾಡದಿದ್ದಾಗ ರೂಪುಗೊಳ್ಳುತ್ತವೆ\n'
              '• ಅತ್ಯಂತ ಸಾಮಾನ್ಯ ವಿಧದ ಅಂಡಾಶಯದ ಚೀಲ\n\n'
              'ಕಾರ್ಪಸ್ ಲೂಟಿಯಂ ಚೀಲಗಳು:\n'
              '• ಅಂಡ ಬಿಡುಗಡೆಯಾದ ನಂತರ ರೂಪುಗೊಳ್ಳುತ್ತವೆ\n'
              '• ಸಾಮಾನ್ಯವಾಗಿ ಕೆಲವು ವಾರಗಳಲ್ಲಿ ಕರಗುತ್ತವೆ\n\n'
              'ಅಪಾಯಕಾರಿ ಅಂಶಗಳು:\n'
              '• ಹಾರ್ಮೋನ್ ಅಸಮತೋಲನ\n'
              '• ಹಿಂದಿನ ಅಂಡಾಶಯದ ಚೀಲಗಳು\n'
              '• ಫಲವತ್ತತೆ ಔಷಧಿಗಳ ಬಳಕೆ',
    },
    {
      'title': 'ರೋಗಲಕ್ಷಣಗಳು',
      'body':
          'ಹೆಚ್ಚಿನ ಸರಳ ಅಂಡಾಶಯದ ಚೀಲಗಳು ಯಾವುದೇ ಲಕ್ಷಣಗಳನ್ನು ಉಂಟುಮಾಡುವುದಿಲ್ಲ. ಲಕ್ಷಣಗಳು ಕಂಡುಬಂದಾಗ:\n\n'
              '• ಸೊಂಟದ ಒಂದು ಬದಿಯಲ್ಲಿ ಮಂದ ನೋವು\n'
              '• ಹೊಟ್ಟೆ ಉಬ್ಬುವಿಕೆ\n'
              '• ಋತುಸ್ರಾವದ ಸಮಯದಲ್ಲಿ ನೋವು\n'
              '• ಮೂತ್ರಕೋಶ ಅಥವಾ ಮಲನಾಳದ ಮೇಲೆ ಒತ್ತಡ\n\n'
              'ಇದ್ದಕ್ಕಿದ್ದಂತೆ ತೀವ್ರ ನೋವು ಕಂಡುಬಂದರೆ ತಕ್ಷಣ ವೈದ್ಯಕೀಯ ಸಹಾಯ ಪಡೆಯಿರಿ.',
    },
    {
      'title': 'ರೋಗನಿರ್ಣಯ',
      'body':
          'ಸರಳ ಅಂಡಾಶಯದ ಚೀಲಗಳನ್ನು ಸಾಮಾನ್ಯವಾಗಿ ಈ ವಿಧಾನಗಳಿಂದ ಪತ್ತೆ ಮಾಡಲಾಗುತ್ತದೆ:\n\n'
              '೧. ಪೆಲ್ವಿಕ್ ಅಲ್ಟ್ರಾಸೌಂಡ್ — ಪ್ರಾಥಮಿಕ ಸಾಧನ. ಸರಳ ಚೀಲವು ಗೋಲಾಕಾರದ, ತೆಳು ಗೋಡೆಯ, ದ್ರವ ತುಂಬಿದ ರಚನೆಯಾಗಿ ಕಾಣಿಸುತ್ತದೆ.\n\n'
              '೨. ಟ್ರಾನ್ಸ್‌ವ್ಯಾಜಿನಲ್ ಅಲ್ಟ್ರಾಸೌಂಡ್ — ಅಂಡಾಶಯಗಳ ಸ್ಪಷ್ಟ ಚಿತ್ರಣ ನೀಡುತ್ತದೆ.\n\n'
              '೩. ರಕ್ತ ಪರೀಕ್ಷೆಗಳು — ಅಗತ್ಯವಿದ್ದರೆ CA-125 ಪರೀಕ್ಷೆ.\n\n'
              '೪. ೬-೮ ವಾರಗಳ ನಂತರ ಅನುಸರಣಾ ಅಲ್ಟ್ರಾಸೌಂಡ್.',
    },
    {
      'title': 'ಚಿಕಿತ್ಸಾ ಆಯ್ಕೆಗಳು',
      'body':
          'ಚಿಕಿತ್ಸೆಯು ಚೀಲದ ಗಾತ್ರ, ಲಕ್ಷಣಗಳು ಮತ್ತು ರೋಗಿಯ ವಯಸ್ಸಿನ ಮೇಲೆ ಅವಲಂಬಿತವಾಗಿರುತ್ತದೆ.\n\n'
              'ಅವಲೋಕನ (ಅತ್ಯಂತ ಸಾಮಾನ್ಯ):\n'
              '• ಹೆಚ್ಚಿನ ಚೀಲಗಳು ೧-೩ ಋತುಚಕ್ರಗಳಲ್ಲಿ ಕರಗುತ್ತವೆ\n'
              '• ಅನುಸರಣಾ ಅಲ್ಟ್ರಾಸೌಂಡ್\n\n'
              'ಔಷಧಿಗಳು:\n'
              '• ನೋವು ನಿವಾರಕಗಳು (NSAIDs)\n'
              '• ಹಾರ್ಮೋನ್ ಗರ್ಭನಿರೋಧಕಗಳು\n\n'
              'ಶಸ್ತ್ರಚಿಕಿತ್ಸೆ (ಅಪರೂಪ):\n'
              '• ದೊಡ್ಡ (>೫-೭ ಸೆಂ.ಮೀ.) ಅಥವಾ ನಿರಂತರ ಚೀಲಗಳಿಗೆ ಲ್ಯಾಪರೊಸ್ಕೋಪಿಕ್ ಸಿಸ್ಟೆಕ್ಟಮಿ',
    },
    {
      'title': 'ವೈದ್ಯರನ್ನು ಯಾವಾಗ ಭೇಟಿ ಮಾಡಬೇಕು?',
      'body':
          'ಈ ಲಕ್ಷಣಗಳು ಕಂಡುಬಂದರೆ ವೈದ್ಯರನ್ನು ಸಂಪರ್ಕಿಸಿ:\n\n'
              '• ಸುಧಾರಿಸದ ನಿರಂತರ ಸೊಂಟದ ನೋವು\n'
              '• ಇದ್ದಕ್ಕಿದ್ದಂತೆ ತೀವ್ರವಾದ ಹೊಟ್ಟೆ ನೋವು\n'
              '• ಜ್ವರ ಅಥವಾ ವಾಂತಿಯೊಂದಿಗೆ ನೋವು\n'
              '• ತಲೆತಿರುಗುವಿಕೆ ಅಥವಾ ಮೂರ್ಛೆ\n'
              '• ಹೊಟ್ಟೆ ಉಬ್ಬುವಿಕೆ ಕಡಿಮೆಯಾಗದಿದ್ದರೆ\n\n'
              'ಈ ಲಕ್ಷಣಗಳು ಚೀಲ ಒಡೆಯುವಿಕೆ ಅಥವಾ ಅಂಡಾಶಯದ ತಿರುಚುವಿಕೆಯನ್ನು ಸೂಚಿಸಬಹುದು.',
    },
  ];

  // ---------- UI labels by language ----------
  static const Map<String, Map<String, String>> _labels = {
    'en': {
      'appBar': 'Simple Ovarian Cyst',
      'sectionHeader': 'About This Condition',
      'disclaimer':
          'This content is for educational purposes only and does not replace professional medical advice. Always consult your doctor for diagnosis and treatment.',
    },
    'kn': {
      'appBar': 'ಸರಳ ಅಂಡಾಶಯದ ಚೀಲ',
      'sectionHeader': 'ಈ ಸ್ಥಿತಿಯ ಬಗ್ಗೆ',
      'disclaimer':
          'ಈ ಮಾಹಿತಿಯು ಕೇವಲ ಶೈಕ್ಷಣಿಕ ಉದ್ದೇಶಗಳಿಗಾಗಿ ಮಾತ್ರ ಮತ್ತು ವೃತ್ತಿಪರ ವೈದ್ಯಕೀಯ ಸಲಹೆಯನ್ನು ಬದಲಿಸುವುದಿಲ್ಲ. ರೋಗನಿರ್ಣಯ ಮತ್ತು ಚಿಕಿತ್ಸೆಗಾಗಿ ಯಾವಾಗಲೂ ನಿಮ್ಮ ವೈದ್ಯರನ್ನು ಸಂಪರ್ಕಿಸಿ.',
    },
  };

  List<Map<String, String>> get _sections =>
      _language == 'kn' ? _sectionsKn : _sectionsEn;

  String _label(String key) => _labels[_language]?[key] ?? _labels['en']![key]!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: hospitalAppBar(
        context,
        title: _label('appBar'),
        backgroundColor: _themeColor.withValues(alpha: 0.15),
        foregroundColor: _themeColor,
        actions: [
          _buildLanguageToggle(),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
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
