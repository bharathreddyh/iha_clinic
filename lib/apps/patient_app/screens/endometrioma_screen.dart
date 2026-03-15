import 'package:flutter/material.dart';
import '../../../core/widgets/hospital_app_bar.dart';

class EndometriomaScreen extends StatefulWidget {
  const EndometriomaScreen({super.key});

  @override
  State<EndometriomaScreen> createState() => _EndometriomaScreenState();
}

class _EndometriomaScreenState extends State<EndometriomaScreen> {
  static const Color _themeColor = Color(0xFFC62828);

  String _language = 'en';

  // ---------- English content ----------
  static const List<Map<String, String>> _sectionsEn = [
    {
      'title': 'What is an Endometrioma?',
      'body':
          'An endometrioma, also known as a "chocolate cyst," is a type of ovarian cyst that forms when endometrial tissue (the tissue that normally lines the uterus) grows on the ovary. Over time, old blood accumulates inside the cyst, giving it a dark, chocolate-brown colour.\n\n'
              'Endometriomas are a form of endometriosis — a condition where endometrial-like tissue grows outside the uterus. They are found in 17–44% of women with endometriosis and most commonly affect women in their 30s and 40s.',
    },
    {
      'title': 'Causes & Risk Factors',
      'body':
          'Endometriomas develop as part of endometriosis. The exact cause is not fully understood, but several theories exist:\n\n'
              '• Retrograde menstruation — menstrual blood flows backward through the fallopian tubes into the pelvic cavity\n'
              '• Metaplasia — cells outside the uterus transform into endometrial-like cells\n'
              '• Immune system dysfunction — the body fails to clear displaced endometrial tissue\n\n'
              'Risk factors include:\n'
              '• Family history of endometriosis\n'
              '• Early onset of menstruation\n'
              '• Short menstrual cycles (<27 days)\n'
              '• Heavy or prolonged periods\n'
              '• Never having given birth\n'
              '• Delayed childbearing',
    },
    {
      'title': 'Symptoms',
      'body':
          'Symptoms of endometriomas often overlap with those of endometriosis and may include:\n\n'
              '• Chronic pelvic pain, often worsening during menstruation\n'
              '• Painful periods (dysmenorrhoea)\n'
              '• Pain during or after intercourse (dyspareunia)\n'
              '• Pain during bowel movements or urination\n'
              '• Heavy or irregular periods\n'
              '• Difficulty getting pregnant (infertility)\n'
              '• Bloating and fatigue\n\n'
              'Some women may have no symptoms, and the endometrioma is discovered incidentally on ultrasound.\n\n'
              'The severity of symptoms does not always correlate with the size or number of cysts.',
    },
    {
      'title': 'Diagnosis',
      'body':
          'Endometriomas are diagnosed using:\n\n'
              '1. Transvaginal ultrasound — the primary tool. Endometriomas appear as cysts with homogeneous, low-level internal echoes (the "ground glass" appearance), which is characteristic of old blood.\n\n'
              '2. MRI — may be used for complex cases or when planning surgery. Provides detailed imaging of the cyst and surrounding endometriosis.\n\n'
              '3. Blood tests — CA-125 levels may be mildly elevated in endometriosis but are not specific.\n\n'
              '4. Laparoscopy — the gold standard for diagnosing endometriosis. Allows direct visualisation and biopsy, but is typically reserved for when surgery is planned.',
    },
    {
      'title': 'Treatment Options',
      'body':
          'Treatment depends on symptoms, cyst size, age, and fertility wishes.\n\n'
              'Medications:\n'
              '• Pain relievers (NSAIDs) for symptom management\n'
              '• Hormonal therapies — oral contraceptives, progestins, or GnRH agonists to suppress endometrial growth and reduce pain\n'
              '• These medications do not eliminate existing endometriomas but may slow their growth\n\n'
              'Surgery:\n'
              '• Laparoscopic cystectomy — preferred surgical approach; removes the cyst while preserving the ovary\n'
              '• Recommended for cysts >4 cm, severe symptoms, or concerns about malignancy\n'
              '• Important for fertility: surgery should be carefully considered as it may reduce ovarian reserve\n\n'
              'Fertility treatments:\n'
              '• IVF may be recommended for women with endometriomas who have difficulty conceiving\n'
              '• Egg freezing may be discussed before surgery in some cases',
    },
    {
      'title': 'When to See a Doctor',
      'body':
          'Consult your doctor if you experience:\n\n'
              '• Chronic pelvic pain that affects daily life\n'
              '• Severe menstrual cramps that are not relieved by over-the-counter medications\n'
              '• Pain during intercourse\n'
              '• Difficulty getting pregnant\n'
              '• Sudden, severe abdominal pain (may indicate rupture or torsion)\n\n'
              'Early diagnosis and treatment of endometriomas can help manage symptoms, preserve fertility, and prevent complications such as cyst rupture or ovarian damage.',
    },
  ];

  // ---------- Kannada content ----------
  static const List<Map<String, String>> _sectionsKn = [
    {
      'title': 'ಎಂಡೊಮೆಟ್ರಿಯೋಮಾ ಎಂದರೇನು?',
      'body':
          'ಎಂಡೊಮೆಟ್ರಿಯೋಮಾ, "ಚಾಕೊಲೇಟ್ ಸಿಸ್ಟ್" ಎಂದೂ ಕರೆಯಲ್ಪಡುವ ಇದು, ಗರ್ಭಕೋಶದ ಒಳಪದರ ಅಂಗಾಂಶ (ಎಂಡೊಮೆಟ್ರಿಯಲ್ ಅಂಗಾಂಶ) ಅಂಡಾಶಯದ ಮೇಲೆ ಬೆಳೆದಾಗ ರೂಪುಗೊಳ್ಳುವ ಅಂಡಾಶಯದ ಚೀಲವಾಗಿದೆ. ಕಾಲಾನಂತರದಲ್ಲಿ, ಹಳೆಯ ರಕ್ತವು ಚೀಲದ ಒಳಗೆ ಸಂಗ್ರಹವಾಗಿ ಕಂದು ಬಣ್ಣವನ್ನು ನೀಡುತ್ತದೆ.\n\n'
              'ಎಂಡೊಮೆಟ್ರಿಯೋಮಾಗಳು ಎಂಡೊಮೆಟ್ರಿಯೋಸಿಸ್‌ನ ಒಂದು ರೂಪವಾಗಿದ್ದು, ಎಂಡೊಮೆಟ್ರಿಯೋಸಿಸ್ ಇರುವ ೧೭-೪೪% ಮಹಿಳೆಯರಲ್ಲಿ ಕಂಡುಬರುತ್ತವೆ.',
    },
    {
      'title': 'ಕಾರಣಗಳು ಮತ್ತು ಅಪಾಯಕಾರಿ ಅಂಶಗಳು',
      'body':
          'ಎಂಡೊಮೆಟ್ರಿಯೋಮಾಗಳು ಎಂಡೊಮೆಟ್ರಿಯೋಸಿಸ್‌ನ ಭಾಗವಾಗಿ ಬೆಳೆಯುತ್ತವೆ. ನಿಖರ ಕಾರಣ ಸಂಪೂರ್ಣವಾಗಿ ತಿಳಿದಿಲ್ಲ:\n\n'
              '• ಹಿಮ್ಮುಖ ಋತುಸ್ರಾವ — ಋತುಸ್ರಾವ ರಕ್ತವು ಫಾಲೋಪಿಯನ್ ಟ್ಯೂಬ್‌ಗಳ ಮೂಲಕ ಹಿಂದಕ್ಕೆ ಹರಿಯುತ್ತದೆ\n'
              '• ಪ್ರತಿರಕ್ಷಣಾ ವ್ಯವಸ್ಥೆಯ ಅಸಮರ್ಪಕ ಕಾರ್ಯ\n\n'
              'ಅಪಾಯಕಾರಿ ಅಂಶಗಳು:\n'
              '• ಎಂಡೊಮೆಟ್ರಿಯೋಸಿಸ್ ಕುಟುಂಬ ಇತಿಹಾಸ\n'
              '• ಋತುಸ್ರಾವದ ಆರಂಭಿಕ ಪ್ರಾರಂಭ\n'
              '• ಕಡಿಮೆ ಋತುಚಕ್ರ (<೨೭ ದಿನಗಳು)\n'
              '• ಅಧಿಕ ಅಥವಾ ದೀರ್ಘ ಋತುಸ್ರಾವ\n'
              '• ಹೆರಿಗೆಯಾಗದಿರುವುದು',
    },
    {
      'title': 'ರೋಗಲಕ್ಷಣಗಳು',
      'body':
          'ಎಂಡೊಮೆಟ್ರಿಯೋಮಾದ ಲಕ್ಷಣಗಳು ಎಂಡೊಮೆಟ್ರಿಯೋಸಿಸ್‌ನ ಲಕ್ಷಣಗಳೊಂದಿಗೆ ಹೊಂದಿಕೆಯಾಗಬಹುದು:\n\n'
              '• ದೀರ್ಘಕಾಲಿಕ ಸೊಂಟದ ನೋವು, ಋತುಸ್ರಾವದ ಸಮಯದಲ್ಲಿ ಹೆಚ್ಚಾಗುತ್ತದೆ\n'
              '• ನೋವಿನ ಋತುಸ್ರಾವ (ಡಿಸ್ಮೆನೊರಿಯಾ)\n'
              '• ಲೈಂಗಿಕ ಸಂಪರ್ಕದ ಸಮಯದಲ್ಲಿ ನೋವು\n'
              '• ಮಲವಿಸರ್ಜನೆ ಅಥವಾ ಮೂತ್ರ ವಿಸರ್ಜನೆ ಸಮಯದಲ್ಲಿ ನೋವು\n'
              '• ಅಧಿಕ ಅಥವಾ ಅನಿಯಮಿತ ಋತುಸ್ರಾವ\n'
              '• ಗರ್ಭಧರಿಸಲು ಕಷ್ಟ (ಬಂಜೆತನ)\n\n'
              'ಲಕ್ಷಣಗಳ ತೀವ್ರತೆ ಚೀಲದ ಗಾತ್ರ ಅಥವಾ ಸಂಖ್ಯೆಗೆ ಯಾವಾಗಲೂ ಸಂಬಂಧಿಸಿರುವುದಿಲ್ಲ.',
    },
    {
      'title': 'ರೋಗನಿರ್ಣಯ',
      'body':
          'ಎಂಡೊಮೆಟ್ರಿಯೋಮಾಗಳನ್ನು ಈ ವಿಧಾನಗಳಿಂದ ಪತ್ತೆ ಮಾಡಲಾಗುತ್ತದೆ:\n\n'
              '೧. ಟ್ರಾನ್ಸ್‌ವ್ಯಾಜಿನಲ್ ಅಲ್ಟ್ರಾಸೌಂಡ್ — ಚೀಲವು ಏಕರೂಪದ, ಕಡಿಮೆ-ಮಟ್ಟದ ಆಂತರಿಕ ಪ್ರತಿಧ್ವನಿಗಳೊಂದಿಗೆ ("ಗ್ರೌಂಡ್ ಗ್ಲಾಸ್" ಕಾಣಿಸಿಕೆ) ಕಾಣಿಸುತ್ತದೆ.\n\n'
              '೨. MRI — ಸಂಕೀರ್ಣ ಪ್ರಕರಣಗಳಿಗೆ ಅಥವಾ ಶಸ್ತ್ರಚಿಕಿತ್ಸೆ ಯೋಜನೆಗೆ ಬಳಸಲಾಗುತ್ತದೆ.\n\n'
              '೩. ರಕ್ತ ಪರೀಕ್ಷೆಗಳು — CA-125 ಮಟ್ಟಗಳು ಸ್ವಲ್ಪ ಹೆಚ್ಚಾಗಿರಬಹುದು.\n\n'
              '೪. ಲ್ಯಾಪರೊಸ್ಕೋಪಿ — ಎಂಡೊಮೆಟ್ರಿಯೋಸಿಸ್ ರೋಗನಿರ್ಣಯಕ್ಕೆ ಚಿನ್ನದ ಮಾನದಂಡ.',
    },
    {
      'title': 'ಚಿಕಿತ್ಸಾ ಆಯ್ಕೆಗಳು',
      'body':
          'ಚಿಕಿತ್ಸೆಯು ಲಕ್ಷಣಗಳು, ಚೀಲದ ಗಾತ್ರ, ವಯಸ್ಸು ಮತ್ತು ಫಲವತ್ತತೆ ಬಯಕೆಗಳ ಮೇಲೆ ಅವಲಂಬಿತ.\n\n'
              'ಔಷಧಿಗಳು:\n'
              '• ನೋವು ನಿವಾರಕಗಳು (NSAIDs)\n'
              '• ಹಾರ್ಮೋನ್ ಚಿಕಿತ್ಸೆಗಳು — ಗರ್ಭನಿರೋಧಕಗಳು, ಪ್ರೊಜೆಸ್ಟಿನ್‌ಗಳು\n'
              '• ಇವು ಅಸ್ತಿತ್ವದಲ್ಲಿರುವ ಚೀಲಗಳನ್ನು ತೆಗೆದುಹಾಕುವುದಿಲ್ಲ ಆದರೆ ಬೆಳವಣಿಗೆಯನ್ನು ನಿಧಾನಗೊಳಿಸಬಹುದು\n\n'
              'ಶಸ್ತ್ರಚಿಕಿತ್ಸೆ:\n'
              '• ಲ್ಯಾಪರೊಸ್ಕೋಪಿಕ್ ಸಿಸ್ಟೆಕ್ಟಮಿ — >೪ ಸೆಂ.ಮೀ. ಚೀಲಗಳಿಗೆ ಅಥವಾ ತೀವ್ರ ಲಕ್ಷಣಗಳಿಗೆ\n'
              '• ಅಂಡಾಶಯದ ಮೀಸಲನ್ನು ಕಡಿಮೆ ಮಾಡಬಹುದು ಎಂದು ಎಚ್ಚರಿಕೆಯಿಂದ ಪರಿಗಣಿಸಬೇಕು\n\n'
              'ಫಲವತ್ತತೆ ಚಿಕಿತ್ಸೆಗಳು:\n'
              '• IVF ಶಿಫಾರಸು ಮಾಡಬಹುದು',
    },
    {
      'title': 'ವೈದ್ಯರನ್ನು ಯಾವಾಗ ಭೇಟಿ ಮಾಡಬೇಕು?',
      'body':
          'ಈ ಲಕ್ಷಣಗಳು ಕಂಡುಬಂದರೆ ವೈದ್ಯರನ್ನು ಸಂಪರ್ಕಿಸಿ:\n\n'
              '• ದೈನಂದಿನ ಜೀವನವನ್ನು ಪ್ರಭಾವಿಸುವ ದೀರ್ಘಕಾಲಿಕ ಸೊಂಟದ ನೋವು\n'
              '• ಔಷಧಿಗಳಿಂದ ನಿವಾರಣೆಯಾಗದ ತೀವ್ರ ಋತುಸ್ರಾವ ನೋವು\n'
              '• ಲೈಂಗಿಕ ಸಂಪರ್ಕದ ಸಮಯದಲ್ಲಿ ನೋವು\n'
              '• ಗರ್ಭಧರಿಸಲು ಕಷ್ಟ\n'
              '• ಇದ್ದಕ್ಕಿದ್ದಂತೆ ತೀವ್ರ ಹೊಟ್ಟೆ ನೋವು\n\n'
              'ಆರಂಭಿಕ ರೋಗನಿರ್ಣಯ ಮತ್ತು ಚಿಕಿತ್ಸೆ ಲಕ್ಷಣಗಳನ್ನು ನಿರ್ವಹಿಸಲು ಮತ್ತು ಫಲವತ್ತತೆಯನ್ನು ಸಂರಕ್ಷಿಸಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ.',
    },
  ];

  // ---------- UI labels by language ----------
  static const Map<String, Map<String, String>> _labels = {
    'en': {
      'appBar': 'Endometrioma (Chocolate Cyst)',
      'sectionHeader': 'About This Condition',
      'disclaimer':
          'This content is for educational purposes only and does not replace professional medical advice. Always consult your doctor for diagnosis and treatment.',
    },
    'kn': {
      'appBar': 'ಎಂಡೊಮೆಟ್ರಿಯೋಮಾ (ಚಾಕೊಲೇಟ್ ಸಿಸ್ಟ್)',
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
