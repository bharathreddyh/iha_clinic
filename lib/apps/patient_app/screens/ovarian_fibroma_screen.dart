import 'package:flutter/material.dart';
import '../../../core/widgets/hospital_app_bar.dart';

class OvarianFibromaScreen extends StatefulWidget {
  const OvarianFibromaScreen({super.key});

  @override
  State<OvarianFibromaScreen> createState() => _OvarianFibromaScreenState();
}

class _OvarianFibromaScreenState extends State<OvarianFibromaScreen> {
  static const Color _themeColor = Color(0xFF00838F);

  String _language = 'en';

  // ---------- English content ----------
  static const List<Map<String, String>> _sectionsEn = [
    {
      'title': 'What is an Ovarian Fibroma?',
      'body':
          'An ovarian fibroma is a solid, benign (non-cancerous) tumour of the ovary that arises from the stromal (connective tissue) cells. Unlike ovarian cysts, fibromas are solid tumours — they do not contain fluid.\n\n'
              'Ovarian fibromas are relatively uncommon, accounting for about 1–5% of all ovarian tumours. They are most commonly found in perimenopausal and postmenopausal women, typically between 40 and 60 years of age.\n\n'
              'These tumours are almost always benign and unilateral (affecting one ovary). They grow slowly and are usually discovered incidentally or when they cause symptoms due to their size.',
    },
    {
      'title': 'Causes & Risk Factors',
      'body':
          'The exact cause of ovarian fibromas is not known. They develop from the sex cord–stromal cells of the ovary.\n\n'
              'Key points:\n'
              '• They are NOT related to ovulation, the menstrual cycle, or hormones\n'
              '• They are NOT caused by lifestyle factors\n'
              '• There is no known prevention\n\n'
              'Risk factors:\n'
              '• Age — most common in women aged 40–60\n'
              '• Nevoid basal cell carcinoma syndrome (Gorlin syndrome) — a rare genetic condition associated with bilateral ovarian fibromas at a younger age\n\n'
              'Important: Ovarian fibromas are distinct from uterine fibroids (leiomyomas), which arise from the muscle wall of the uterus. Despite the similar name, they are different conditions.',
    },
    {
      'title': 'Symptoms',
      'body':
          'Many ovarian fibromas cause no symptoms and are found incidentally on imaging or during surgery for other conditions.\n\n'
              'When symptoms occur, they may include:\n'
              '• Dull pelvic pain or pressure\n'
              '• Abdominal bloating or distension\n'
              '• A palpable pelvic or abdominal mass\n\n'
              'Meigs syndrome (uncommon but important):\n'
              'A classic triad associated with ovarian fibromas:\n'
              '• Ovarian fibroma (solid ovarian tumour)\n'
              '• Ascites (fluid accumulation in the abdomen)\n'
              '• Pleural effusion (fluid around the lungs)\n'
              'This syndrome resolves completely after surgical removal of the tumour.\n\n'
              'Ovarian torsion:\n'
              '• Large fibromas can cause the ovary to twist on its stalk, leading to sudden severe pain — a surgical emergency.',
    },
    {
      'title': 'Diagnosis',
      'body':
          'Ovarian fibromas can be challenging to diagnose on imaging because they are solid tumours:\n\n'
              '1. Pelvic ultrasound — the primary tool. Typical features:\n'
              '   • Solid, well-defined, hypoechoic (dark) mass\n'
              '   • May show posterior acoustic shadowing (similar to uterine fibroids)\n'
              '   • No internal blood flow or minimal vascularity on Doppler\n'
              '   • Can be difficult to distinguish from pedunculated uterine fibroids\n\n'
              '2. MRI — very helpful for characterisation:\n'
              '   • Shows low signal intensity on both T1 and T2 (due to fibrous tissue)\n'
              '   • Helps differentiate from other solid ovarian masses\n\n'
              '3. CT scan — may show a solid adnexal mass; useful if ascites or pleural effusion is present (Meigs syndrome).\n\n'
              '4. Tumour markers — CA-125 may be mildly elevated, especially if ascites is present. This does NOT indicate malignancy.\n\n'
              '5. Definitive diagnosis — requires histopathological examination after surgical removal.',
    },
    {
      'title': 'Treatment Options',
      'body':
          'Ovarian fibromas do not resolve on their own and are typically managed surgically.\n\n'
              'Surgery:\n'
              '• Laparoscopic oophorectomy or cystectomy — removal of the tumour, with or without the ovary\n'
              '• In younger women, the tumour can often be shelled out while preserving the ovary\n'
              '• In postmenopausal women, removal of the affected ovary (oophorectomy) is usually recommended\n'
              '• If Meigs syndrome is present, the ascites and pleural effusion resolve after surgery\n\n'
              'Observation:\n'
              '• Small, asymptomatic fibromas discovered incidentally may be monitored with periodic imaging\n'
              '• Close follow-up to ensure the mass is not growing or changing in character\n\n'
              'After surgery:\n'
              '• Prognosis is excellent — ovarian fibromas are benign\n'
              '• Recurrence is rare after complete removal\n'
              '• Malignant transformation is extremely rare',
    },
    {
      'title': 'When to See a Doctor',
      'body':
          'Consult your doctor if you experience:\n\n'
              '• Persistent pelvic pain or pressure\n'
              '• Progressive abdominal bloating or swelling\n'
              '• A palpable mass in the pelvis or abdomen\n'
              '• Sudden, severe abdominal pain (may indicate torsion — seek emergency care)\n'
              '• Shortness of breath with abdominal distension (may suggest Meigs syndrome)\n'
              '• Unexplained weight gain or abdominal girth increase\n\n'
              'Any solid ovarian mass should be evaluated promptly to rule out malignancy and plan appropriate management.',
    },
  ];

  // ---------- Kannada content ----------
  static const List<Map<String, String>> _sectionsKn = [
    {
      'title': 'ಅಂಡಾಶಯದ ಫೈಬ್ರೋಮಾ ಎಂದರೇನು?',
      'body':
          'ಅಂಡಾಶಯದ ಫೈಬ್ರೋಮಾ ಎಂದರೆ ಅಂಡಾಶಯದ ಸ್ಟ್ರೋಮಲ್ (ಸಂಯೋಜಕ ಅಂಗಾಂಶ) ಕೋಶಗಳಿಂದ ಉದ್ಭವಿಸುವ ಘನ, ಹಾನಿಕರವಲ್ಲದ ಗೆಡ್ಡೆಯಾಗಿದೆ. ಅಂಡಾಶಯದ ಚೀಲಗಳಿಗಿಂತ ಭಿನ್ನವಾಗಿ, ಫೈಬ್ರೋಮಾಗಳು ಘನ ಗೆಡ್ಡೆಗಳು — ಇವು ದ್ರವವನ್ನು ಹೊಂದಿರುವುದಿಲ್ಲ.\n\n'
              'ಅಂಡಾಶಯದ ಫೈಬ್ರೋಮಾಗಳು ತುಲನಾತ್ಮಕವಾಗಿ ಅಪರೂಪವಾಗಿದ್ದು, ಎಲ್ಲಾ ಅಂಡಾಶಯದ ಗೆಡ್ಡೆಗಳಲ್ಲಿ ಸುಮಾರು ೧-೫% ಅನ್ನು ಹೊಂದಿವೆ. ೪೦-೬೦ ವಯಸ್ಸಿನ ಮಹಿಳೆಯರಲ್ಲಿ ಹೆಚ್ಚಾಗಿ ಕಂಡುಬರುತ್ತವೆ.',
    },
    {
      'title': 'ಕಾರಣಗಳು ಮತ್ತು ಅಪಾಯಕಾರಿ ಅಂಶಗಳು',
      'body':
          'ಅಂಡಾಶಯದ ಫೈಬ್ರೋಮಾಗಳ ನಿಖರ ಕಾರಣ ತಿಳಿದಿಲ್ಲ. ಅಂಡಾಶಯದ ಸೆಕ್ಸ್ ಕಾರ್ಡ್-ಸ್ಟ್ರೋಮಲ್ ಕೋಶಗಳಿಂದ ಬೆಳೆಯುತ್ತವೆ.\n\n'
              'ಪ್ರಮುಖ ಅಂಶಗಳು:\n'
              '• ಅಂಡೋತ್ಪತ್ತಿ, ಋತುಚಕ್ರ ಅಥವಾ ಹಾರ್ಮೋನ್‌ಗಳಿಗೆ ಸಂಬಂಧಿಸಿಲ್ಲ\n'
              '• ಜೀವನಶೈಲಿ ಅಂಶಗಳಿಂದ ಉಂಟಾಗುವುದಿಲ್ಲ\n\n'
              'ಅಪಾಯಕಾರಿ ಅಂಶಗಳು:\n'
              '• ವಯಸ್ಸು — ೪೦-೬೦ ವಯಸ್ಸಿನ ಮಹಿಳೆಯರಲ್ಲಿ ಹೆಚ್ಚು ಸಾಮಾನ್ಯ\n'
              '• ಗಾರ್ಲಿನ್ ಸಿಂಡ್ರೋಮ್ — ಅಪರೂಪದ ಆನುವಂಶಿಕ ಸ್ಥಿತಿ\n\n'
              'ಮುಖ್ಯ: ಅಂಡಾಶಯದ ಫೈಬ್ರೋಮಾಗಳು ಗರ್ಭಕೋಶದ ಫೈಬ್ರಾಯ್ಡ್‌ಗಳಿಗಿಂತ (ಲಿಯೋಮಯೋಮಾ) ಭಿನ್ನವಾಗಿವೆ.',
    },
    {
      'title': 'ರೋಗಲಕ್ಷಣಗಳು',
      'body':
          'ಅನೇಕ ಅಂಡಾಶಯದ ಫೈಬ್ರೋಮಾಗಳು ಯಾವುದೇ ಲಕ್ಷಣಗಳಿಲ್ಲದೆ ಇರುತ್ತವೆ.\n\n'
              'ಲಕ್ಷಣಗಳು ಕಂಡುಬಂದಾಗ:\n'
              '• ಸೊಂಟದ ಮಂದ ನೋವು ಅಥವಾ ಒತ್ತಡ\n'
              '• ಹೊಟ್ಟೆ ಉಬ್ಬುವಿಕೆ\n'
              '• ಸೊಂಟ ಅಥವಾ ಹೊಟ್ಟೆಯಲ್ಲಿ ಗಡ್ಡೆ\n\n'
              'ಮೇಗ್ಸ್ ಸಿಂಡ್ರೋಮ್ (ಅಪರೂಪ ಆದರೆ ಮುಖ್ಯ):\n'
              '• ಅಂಡಾಶಯದ ಫೈಬ್ರೋಮಾ\n'
              '• ಅಸೈಟಿಸ್ (ಹೊಟ್ಟೆಯಲ್ಲಿ ದ್ರವ ಸಂಗ್ರಹ)\n'
              '• ಪ್ಲೂರಲ್ ಎಫ್ಯೂಷನ್ (ಶ್ವಾಸಕೋಶದ ಸುತ್ತ ದ್ರವ)\n'
              'ಗೆಡ್ಡೆ ತೆಗೆದ ನಂತರ ಈ ಸಿಂಡ್ರೋಮ್ ಸಂಪೂರ್ಣವಾಗಿ ಕರಗುತ್ತದೆ.',
    },
    {
      'title': 'ರೋಗನಿರ್ಣಯ',
      'body':
          'ಅಂಡಾಶಯದ ಫೈಬ್ರೋಮಾಗಳನ್ನು ಈ ವಿಧಾನಗಳಿಂದ ಪತ್ತೆ ಮಾಡಲಾಗುತ್ತದೆ:\n\n'
              '೧. ಪೆಲ್ವಿಕ್ ಅಲ್ಟ್ರಾಸೌಂಡ್ — ಘನ, ಹೈಪೋಎಕೋಯಿಕ್ ಗಡ್ಡೆ, ಕಡಿಮೆ ರಕ್ತ ಪ್ರವಾಹ.\n\n'
              '೨. MRI — ಅತ್ಯಂತ ಸಹಾಯಕ; T1 ಮತ್ತು T2 ಎರಡರಲ್ಲೂ ಕಡಿಮೆ ಸಿಗ್ನಲ್ ತೀವ್ರತೆ.\n\n'
              '೩. CT ಸ್ಕ್ಯಾನ್ — ಘನ ಗಡ್ಡೆ ಕಾಣಿಸುತ್ತದೆ; ಅಸೈಟಿಸ್ ಮೌಲ್ಯಮಾಪನಕ್ಕೆ ಉಪಯುಕ್ತ.\n\n'
              '೪. ಗೆಡ್ಡೆ ಮಾರ್ಕರ್‌ಗಳು — CA-125 ಸ್ವಲ್ಪ ಹೆಚ್ಚಾಗಿರಬಹುದು.\n\n'
              '೫. ಖಚಿತ ರೋಗನಿರ್ಣಯಕ್ಕೆ ಹಿಸ್ಟೋಪ್ಯಾಥೊಲಾಜಿಕಲ್ ಪರೀಕ್ಷೆ ಅಗತ್ಯ.',
    },
    {
      'title': 'ಚಿಕಿತ್ಸಾ ಆಯ್ಕೆಗಳು',
      'body':
          'ಅಂಡಾಶಯದ ಫೈಬ್ರೋಮಾಗಳು ತಾವಾಗಿಯೇ ಕರಗುವುದಿಲ್ಲ ಮತ್ತು ಸಾಮಾನ್ಯವಾಗಿ ಶಸ್ತ್ರಚಿಕಿತ್ಸೆಯಿಂದ ನಿರ್ವಹಿಸಲಾಗುತ್ತದೆ.\n\n'
              'ಶಸ್ತ್ರಚಿಕಿತ್ಸೆ:\n'
              '• ಯುವ ಮಹಿಳೆಯರಲ್ಲಿ ಅಂಡಾಶಯವನ್ನು ಸಂರಕ್ಷಿಸಿ ಗೆಡ್ಡೆಯನ್ನು ತೆಗೆಯಬಹುದು\n'
              '• ಋತುಬಂಧದ ನಂತರದ ಮಹಿಳೆಯರಲ್ಲಿ ಊಫೊರೆಕ್ಟಮಿ ಶಿಫಾರಸು\n'
              '• ಮೇಗ್ಸ್ ಸಿಂಡ್ರೋಮ್ ಇದ್ದರೆ, ಶಸ್ತ್ರಚಿಕಿತ್ಸೆ ನಂತರ ಅಸೈಟಿಸ್ ಮತ್ತು ಎಫ್ಯೂಷನ್ ಕರಗುತ್ತವೆ\n\n'
              'ಅವಲೋಕನ:\n'
              '• ಸಣ್ಣ, ಲಕ್ಷಣರಹಿತ ಫೈಬ್ರೋಮಾಗಳನ್ನು ನಿಯಮಿತ ಚಿತ್ರಣದೊಂದಿಗೆ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಬಹುದು\n\n'
              'ಶಸ್ತ್ರಚಿಕಿತ್ಸೆ ನಂತರ:\n'
              '• ಮುನ್ನರಿವು ಅತ್ಯುತ್ತಮ\n'
              '• ಪುನರಾವರ್ತನೆ ಅಪರೂಪ',
    },
    {
      'title': 'ವೈದ್ಯರನ್ನು ಯಾವಾಗ ಭೇಟಿ ಮಾಡಬೇಕು?',
      'body':
          'ಈ ಲಕ್ಷಣಗಳು ಕಂಡುಬಂದರೆ ವೈದ್ಯರನ್ನು ಸಂಪರ್ಕಿಸಿ:\n\n'
              '• ನಿರಂತರ ಸೊಂಟದ ನೋವು ಅಥವಾ ಒತ್ತಡ\n'
              '• ಹೆಚ್ಚುತ್ತಿರುವ ಹೊಟ್ಟೆ ಉಬ್ಬುವಿಕೆ\n'
              '• ಸೊಂಟ ಅಥವಾ ಹೊಟ್ಟೆಯಲ್ಲಿ ಗಡ್ಡೆ\n'
              '• ಇದ್ದಕ್ಕಿದ್ದಂತೆ ತೀವ್ರ ಹೊಟ್ಟೆ ನೋವು (ತಿರುಚುವಿಕೆ ಸೂಚಿಸಬಹುದು — ತುರ್ತು ಚಿಕಿತ್ಸೆ ಪಡೆಯಿರಿ)\n'
              '• ಹೊಟ್ಟೆ ಉಬ್ಬಿರುವುದರೊಂದಿಗೆ ಉಸಿರಾಟ ತೊಂದರೆ (ಮೇಗ್ಸ್ ಸಿಂಡ್ರೋಮ್ ಸೂಚಿಸಬಹುದು)\n'
              '• ವಿವರಿಸಲಾಗದ ತೂಕ ಹೆಚ್ಚಳ\n\n'
              'ಯಾವುದೇ ಘನ ಅಂಡಾಶಯದ ಗಡ್ಡೆಯನ್ನು ಮಾರಕತೆ ತಳ್ಳಿಹಾಕಲು ತಕ್ಷಣ ಮೌಲ್ಯಮಾಪನ ಮಾಡಬೇಕು.',
    },
  ];

  // ---------- UI labels by language ----------
  static const Map<String, Map<String, String>> _labels = {
    'en': {
      'appBar': 'Ovarian Fibroma',
      'sectionHeader': 'About This Condition',
      'disclaimer':
          'This content is for educational purposes only and does not replace professional medical advice. Always consult your doctor for diagnosis and treatment.',
    },
    'kn': {
      'appBar': 'ಅಂಡಾಶಯದ ಫೈಬ್ರೋಮಾ',
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
