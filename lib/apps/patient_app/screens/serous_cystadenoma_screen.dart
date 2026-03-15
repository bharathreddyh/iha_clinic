import 'package:flutter/material.dart';
import '../../../core/widgets/hospital_app_bar.dart';

class SerousCystadenomaScreen extends StatefulWidget {
  const SerousCystadenomaScreen({super.key});

  @override
  State<SerousCystadenomaScreen> createState() =>
      _SerousCystadenomaScreenState();
}

class _SerousCystadenomaScreenState extends State<SerousCystadenomaScreen> {
  static const Color _themeColor = Color(0xFF00838F);

  String _language = 'en';

  // ---------- English content ----------
  static const List<Map<String, String>> _sectionsEn = [
    {
      'title': 'What is a Serous Cystadenoma?',
      'body':
          'A serous cystadenoma is a benign (non-cancerous) ovarian tumour that is filled with thin, clear, watery fluid called serous fluid. It is one of the most common benign ovarian neoplasms.\n\n'
              'These tumours arise from the surface epithelium (outer lining) of the ovary. They are typically unilocular (single-chambered) with a smooth, thin wall and no solid components, which gives them a very reassuring appearance on imaging.\n\n'
              'Serous cystadenomas account for about 20% of all ovarian neoplasms and are most commonly found in women between 30 and 50 years of age.',
    },
    {
      'title': 'Causes & Risk Factors',
      'body':
          'The exact cause of serous cystadenomas is not fully understood. Unlike functional cysts, they do not arise from the normal ovulation process.\n\n'
              'Key points:\n'
              '• They develop from the epithelial cells on the surface of the ovary\n'
              '• They are NOT caused by hormonal changes or lifestyle factors\n'
              '• There is no known way to prevent them\n\n'
              'Risk factors:\n'
              '• Age — most common in women aged 30–50\n'
              '• No strong genetic or hereditary link has been established for the benign form\n'
              '• Unlike their malignant counterpart (serous cystadenocarcinoma), benign serous cystadenomas do not have strong associations with BRCA gene mutations',
    },
    {
      'title': 'Symptoms',
      'body':
          'Small serous cystadenomas often cause no symptoms and are discovered incidentally during a routine ultrasound or pelvic exam.\n\n'
              'When the tumour grows larger, symptoms may include:\n'
              '• Dull, aching pelvic pain or pressure\n'
              '• Bloating or abdominal fullness\n'
              '• A palpable mass in the abdomen (if very large)\n'
              '• Urinary frequency — pressure on the bladder\n'
              '• Constipation — pressure on the rectum\n'
              '• Irregular menstrual periods (less common)\n\n'
              'Serous cystadenomas can grow quite large (sometimes >15–20 cm) before causing significant symptoms.\n\n'
              'Complications are uncommon but include ovarian torsion (twisting) if the tumour is large and pedunculated.',
    },
    {
      'title': 'Diagnosis',
      'body':
          'Serous cystadenomas are diagnosed using:\n\n'
              '1. Transvaginal ultrasound — the primary diagnostic tool. Typical features include:\n'
              '   • Unilocular (single-chambered) cyst\n'
              '   • Thin, smooth wall with no solid components\n'
              '   • Clear, anechoic (black) fluid content\n'
              '   • No internal septations or papillary projections\n\n'
              '2. Doppler ultrasound — to assess blood flow; benign tumours typically show minimal vascularity.\n\n'
              '3. MRI — may be used for complex cases or to differentiate from other ovarian masses.\n\n'
              '4. Tumour markers — CA-125 is usually normal in benign serous cystadenomas. Elevated levels may prompt further investigation to rule out malignancy.\n\n'
              '5. IOTA rules / O-RADS scoring — standardised systems used to classify ovarian masses as benign or suspicious.',
    },
    {
      'title': 'Treatment Options',
      'body':
          'Treatment depends on the size of the tumour, symptoms, and the patient\'s age.\n\n'
              'Observation:\n'
              '• Small (<5 cm), asymptomatic cysts with classic benign features may be monitored with periodic ultrasounds\n'
              '• Follow-up interval is typically every 6–12 months\n\n'
              'Surgery:\n'
              '• Laparoscopic cystectomy — preferred for younger women who wish to preserve fertility; the cyst is removed while keeping the ovary\n'
              '• Laparoscopic oophorectomy — removal of the ovary, may be considered in postmenopausal women or if the cyst is very large\n'
              '• Surgery is recommended when the cyst is large (>5–7 cm), growing, symptomatic, or has indeterminate features\n\n'
              'After surgery:\n'
              '• Histopathological examination confirms the diagnosis\n'
              '• Recurrence after complete removal is rare\n'
              '• Prognosis is excellent — serous cystadenomas are benign',
    },
    {
      'title': 'When to See a Doctor',
      'body':
          'Consult your doctor if you experience:\n\n'
              '• Persistent pelvic pain or pressure\n'
              '• Progressive abdominal bloating or enlargement\n'
              '• Sudden, severe abdominal pain (may indicate torsion — seek emergency care)\n'
              '• Urinary or bowel changes due to pelvic pressure\n'
              '• A palpable mass in your abdomen\n\n'
              'Regular follow-up is important if you have a known ovarian cyst to monitor for growth and ensure it remains benign.',
    },
  ];

  // ---------- Kannada content ----------
  static const List<Map<String, String>> _sectionsKn = [
    {
      'title': 'ಸೀರಸ್ ಸಿಸ್ಟಡೆನೋಮಾ ಎಂದರೇನು?',
      'body':
          'ಸೀರಸ್ ಸಿಸ್ಟಡೆನೋಮಾ ಎಂದರೆ ತೆಳುವಾದ, ಸ್ಪಷ್ಟ, ನೀರಿನಂತಹ ದ್ರವದಿಂದ ತುಂಬಿದ ಹಾನಿಕರವಲ್ಲದ (ಬೆನಿಗ್ನ್) ಅಂಡಾಶಯದ ಗೆಡ್ಡೆಯಾಗಿದೆ. ಇದು ಅತ್ಯಂತ ಸಾಮಾನ್ಯ ಬೆನಿಗ್ನ್ ಅಂಡಾಶಯದ ನಿಯೋಪ್ಲಾಸ್ಮ್‌ಗಳಲ್ಲಿ ಒಂದಾಗಿದೆ.\n\n'
              'ಈ ಗೆಡ್ಡೆಗಳು ಅಂಡಾಶಯದ ಮೇಲ್ಮೈ ಎಪಿಥೀಲಿಯಂನಿಂದ ಉದ್ಭವಿಸುತ್ತವೆ. ಎಲ್ಲಾ ಅಂಡಾಶಯದ ನಿಯೋಪ್ಲಾಸ್ಮ್‌ಗಳಲ್ಲಿ ಸುಮಾರು ೨೦% ಅನ್ನು ಹೊಂದಿವೆ ಮತ್ತು ೩೦-೫೦ ವಯಸ್ಸಿನ ಮಹಿಳೆಯರಲ್ಲಿ ಹೆಚ್ಚಾಗಿ ಕಂಡುಬರುತ್ತವೆ.',
    },
    {
      'title': 'ಕಾರಣಗಳು ಮತ್ತು ಅಪಾಯಕಾರಿ ಅಂಶಗಳು',
      'body':
          'ಸೀರಸ್ ಸಿಸ್ಟಡೆನೋಮಾಗಳ ನಿಖರ ಕಾರಣ ಸಂಪೂರ್ಣವಾಗಿ ತಿಳಿದಿಲ್ಲ. ಕ್ರಿಯಾತ್ಮಕ ಚೀಲಗಳಿಗಿಂತ ಭಿನ್ನವಾಗಿ, ಇವು ಸಾಮಾನ್ಯ ಅಂಡೋತ್ಪತ್ತಿ ಪ್ರಕ್ರಿಯೆಯಿಂದ ಉದ್ಭವಿಸುವುದಿಲ್ಲ.\n\n'
              'ಪ್ರಮುಖ ಅಂಶಗಳು:\n'
              '• ಅಂಡಾಶಯದ ಮೇಲ್ಮೈಯ ಎಪಿಥೀಲಿಯಲ್ ಕೋಶಗಳಿಂದ ಬೆಳೆಯುತ್ತವೆ\n'
              '• ಹಾರ್ಮೋನ್ ಬದಲಾವಣೆಗಳು ಅಥವಾ ಜೀವನಶೈಲಿ ಅಂಶಗಳಿಂದ ಉಂಟಾಗುವುದಿಲ್ಲ\n\n'
              'ಅಪಾಯಕಾರಿ ಅಂಶಗಳು:\n'
              '• ವಯಸ್ಸು — ೩೦-೫೦ ವಯಸ್ಸಿನ ಮಹಿಳೆಯರಲ್ಲಿ ಹೆಚ್ಚು ಸಾಮಾನ್ಯ',
    },
    {
      'title': 'ರೋಗಲಕ್ಷಣಗಳು',
      'body':
          'ಸಣ್ಣ ಸೀರಸ್ ಸಿಸ್ಟಡೆನೋಮಾಗಳು ಸಾಮಾನ್ಯವಾಗಿ ಯಾವುದೇ ಲಕ್ಷಣಗಳನ್ನು ಉಂಟುಮಾಡುವುದಿಲ್ಲ. ಗೆಡ್ಡೆ ದೊಡ್ಡದಾದಾಗ ಲಕ್ಷಣಗಳು:\n\n'
              '• ಸೊಂಟದ ಮಂದ ನೋವು ಅಥವಾ ಒತ್ತಡ\n'
              '• ಹೊಟ್ಟೆ ಉಬ್ಬುವಿಕೆ\n'
              '• ಹೊಟ್ಟೆಯಲ್ಲಿ ಗಡ್ಡೆ ಕಾಣಿಸುವುದು (ತುಂಬಾ ದೊಡ್ಡದಾದರೆ)\n'
              '• ಮೂತ್ರಕೋಶದ ಮೇಲೆ ಒತ್ತಡದಿಂದ ಆಗಾಗ್ಗೆ ಮೂತ್ರ ವಿಸರ್ಜನೆ\n'
              '• ಮಲಬದ್ಧತೆ\n\n'
              'ಸೀರಸ್ ಸಿಸ್ಟಡೆನೋಮಾಗಳು ಗಮನಾರ್ಹ ಲಕ್ಷಣಗಳು ಕಾಣಿಸುವ ಮೊದಲು ತುಂಬಾ ದೊಡ್ಡದಾಗಬಹುದು (ಕೆಲವೊಮ್ಮೆ >೧೫-೨೦ ಸೆಂ.ಮೀ.).',
    },
    {
      'title': 'ರೋಗನಿರ್ಣಯ',
      'body':
          'ಸೀರಸ್ ಸಿಸ್ಟಡೆನೋಮಾಗಳನ್ನು ಈ ವಿಧಾನಗಳಿಂದ ಪತ್ತೆ ಮಾಡಲಾಗುತ್ತದೆ:\n\n'
              '೧. ಟ್ರಾನ್ಸ್‌ವ್ಯಾಜಿನಲ್ ಅಲ್ಟ್ರಾಸೌಂಡ್ — ಪ್ರಾಥಮಿಕ ಸಾಧನ. ಏಕಕೋಣೆಯ ಚೀಲ, ತೆಳು ಗೋಡೆ, ಸ್ಪಷ್ಟ ದ್ರವ.\n\n'
              '೨. ಡಾಪ್ಲರ್ ಅಲ್ಟ್ರಾಸೌಂಡ್ — ರಕ್ತ ಪ್ರವಾಹ ಮೌಲ್ಯಮಾಪನ.\n\n'
              '೩. MRI — ಸಂಕೀರ್ಣ ಪ್ರಕರಣಗಳಿಗೆ.\n\n'
              '೪. ಗೆಡ್ಡೆ ಮಾರ್ಕರ್‌ಗಳು — CA-125 ಸಾಮಾನ್ಯವಾಗಿ ಸಾಮಾನ್ಯ ಮಟ್ಟದಲ್ಲಿರುತ್ತದೆ.',
    },
    {
      'title': 'ಚಿಕಿತ್ಸಾ ಆಯ್ಕೆಗಳು',
      'body':
          'ಚಿಕಿತ್ಸೆಯು ಗೆಡ್ಡೆಯ ಗಾತ್ರ, ಲಕ್ಷಣಗಳು ಮತ್ತು ರೋಗಿಯ ವಯಸ್ಸಿನ ಮೇಲೆ ಅವಲಂಬಿತ.\n\n'
              'ಅವಲೋಕನ:\n'
              '• ಸಣ್ಣ (<೫ ಸೆಂ.ಮೀ.), ಲಕ್ಷಣರಹಿತ ಚೀಲಗಳನ್ನು ನಿಯಮಿತ ಅಲ್ಟ್ರಾಸೌಂಡ್‌ಗಳೊಂದಿಗೆ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಬಹುದು\n\n'
              'ಶಸ್ತ್ರಚಿಕಿತ್ಸೆ:\n'
              '• ಲ್ಯಾಪರೊಸ್ಕೋಪಿಕ್ ಸಿಸ್ಟೆಕ್ಟಮಿ — ಫಲವತ್ತತೆ ಸಂರಕ್ಷಿಸಲು ಯುವ ಮಹಿಳೆಯರಿಗೆ ಆದ್ಯತೆ\n'
              '• ಊಫೊರೆಕ್ಟಮಿ — ಋತುಬಂಧದ ನಂತರದ ಮಹಿಳೆಯರಲ್ಲಿ ಪರಿಗಣಿಸಬಹುದು\n\n'
              'ಶಸ್ತ್ರಚಿಕಿತ್ಸೆ ನಂತರ:\n'
              '• ಸಂಪೂರ್ಣ ತೆಗೆಯುವಿಕೆ ನಂತರ ಪುನರಾವರ್ತನೆ ಅಪರೂಪ\n'
              '• ಮುನ್ನರಿವು ಅತ್ಯುತ್ತಮ',
    },
    {
      'title': 'ವೈದ್ಯರನ್ನು ಯಾವಾಗ ಭೇಟಿ ಮಾಡಬೇಕು?',
      'body':
          'ಈ ಲಕ್ಷಣಗಳು ಕಂಡುಬಂದರೆ ವೈದ್ಯರನ್ನು ಸಂಪರ್ಕಿಸಿ:\n\n'
              '• ನಿರಂತರ ಸೊಂಟದ ನೋವು ಅಥವಾ ಒತ್ತಡ\n'
              '• ಹೆಚ್ಚುತ್ತಿರುವ ಹೊಟ್ಟೆ ಉಬ್ಬುವಿಕೆ\n'
              '• ಇದ್ದಕ್ಕಿದ್ದಂತೆ ತೀವ್ರ ಹೊಟ್ಟೆ ನೋವು (ತಿರುಚುವಿಕೆ ಸೂಚಿಸಬಹುದು — ತುರ್ತು ಚಿಕಿತ್ಸೆ ಪಡೆಯಿರಿ)\n'
              '• ಮೂತ್ರ ಅಥವಾ ಮಲವಿಸರ್ಜನೆ ಬದಲಾವಣೆಗಳು\n'
              '• ಹೊಟ್ಟೆಯಲ್ಲಿ ಗಡ್ಡೆ ಕಾಣಿಸುವುದು\n\n'
              'ಅಂಡಾಶಯದ ಚೀಲ ಇದೆ ಎಂದು ತಿಳಿದಿದ್ದರೆ ಬೆಳವಣಿಗೆ ಮೇಲ್ವಿಚಾರಣೆಗೆ ನಿಯಮಿತ ಅನುಸರಣೆ ಮುಖ್ಯ.',
    },
  ];

  // ---------- UI labels by language ----------
  static const Map<String, Map<String, String>> _labels = {
    'en': {
      'appBar': 'Serous Cystadenoma',
      'sectionHeader': 'About This Condition',
      'disclaimer':
          'This content is for educational purposes only and does not replace professional medical advice. Always consult your doctor for diagnosis and treatment.',
    },
    'kn': {
      'appBar': 'ಸೀರಸ್ ಸಿಸ್ಟಡೆನೋಮಾ',
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
