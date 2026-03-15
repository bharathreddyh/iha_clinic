import 'package:flutter/material.dart';
import '../../../core/widgets/hospital_app_bar.dart';

class DermoidCystScreen extends StatefulWidget {
  const DermoidCystScreen({super.key});

  @override
  State<DermoidCystScreen> createState() => _DermoidCystScreenState();
}

class _DermoidCystScreenState extends State<DermoidCystScreen> {
  static const Color _themeColor = Color(0xFFEF6C00);

  String _language = 'en';

  // ---------- English content ----------
  static const List<Map<String, String>> _sectionsEn = [
    {
      'title': 'What is a Dermoid Cyst?',
      'body':
          'A dermoid cyst (also called a mature cystic teratoma) is a type of ovarian germ cell tumour that contains a variety of tissues such as hair, skin, fat, teeth, and sometimes bone or cartilage. Despite sounding alarming, dermoid cysts are almost always benign (non-cancerous).\n\n'
              'They are one of the most common ovarian tumours, accounting for about 10–20% of all ovarian neoplasms. Dermoid cysts can occur at any age but are most commonly found in women between 20 and 40 years of age.\n\n'
              'These cysts develop from totipotent germ cells (cells that can form any type of body tissue), which is why they contain such diverse tissue types.',
    },
    {
      'title': 'Causes & Risk Factors',
      'body':
          'Dermoid cysts arise from germ cells in the ovary — cells that have the potential to develop into any type of tissue. The exact trigger for their formation is not fully understood.\n\n'
              'Key points:\n'
              '• They are congenital (present from birth) but may grow slowly over years before being detected\n'
              '• They are NOT caused by anything the patient did or did not do\n'
              '• They are NOT related to lifestyle, diet, or hormones\n\n'
              'Risk factors:\n'
              '• Reproductive age (20–40 years) — most common age group\n'
              '• In about 10% of cases, dermoid cysts occur on both ovaries (bilateral)\n'
              '• Family history may play a small role, but no strong genetic link has been established',
    },
    {
      'title': 'Symptoms',
      'body':
          'Many dermoid cysts grow slowly and cause no symptoms for years. They are often discovered incidentally during a routine ultrasound or pelvic exam.\n\n'
              'When symptoms occur, they may include:\n'
              '• Dull, aching pain on one side of the pelvis\n'
              '• A feeling of heaviness or fullness in the abdomen\n'
              '• Bloating\n'
              '• Pain during intercourse\n'
              '• Irregular menstrual periods (less common)\n\n'
              'Complications (uncommon but important):\n'
              '• Ovarian torsion — the cyst can cause the ovary to twist, leading to sudden, severe pain. This is a surgical emergency.\n'
              '• Rupture — rare, but can cause severe pain and chemical peritonitis (irritation of the abdominal lining)\n'
              '• Very rarely (<1–2%), malignant transformation can occur, primarily in older women',
    },
    {
      'title': 'Diagnosis',
      'body':
          'Dermoid cysts have a distinctive appearance on imaging:\n\n'
              '1. Pelvic ultrasound — the primary diagnostic tool. Dermoid cysts often show a characteristic mixed pattern with:\n'
              '   • Bright echogenic areas (fat or calcification)\n'
              '   • "Dermoid plug" or "Rokitansky nodule" — a solid protrusion into the cyst\n'
              '   • "Tip of the iceberg" sign — strong echoes that shadow deeper structures\n'
              '   • "Dermoid mesh" — echogenic lines from hair floating in the cyst\n\n'
              '2. CT or MRI — may be used to confirm the diagnosis. Fat within the cyst is very clearly seen on CT.\n\n'
              '3. X-ray — teeth or bone fragments may occasionally be visible.\n\n'
              '4. Tumour markers — AFP, CA-125, and other markers may be checked, especially in younger patients, to rule out immature teratoma.',
    },
    {
      'title': 'Treatment Options',
      'body':
          'Unlike functional cysts, dermoid cysts do not resolve on their own and typically require surgical removal.\n\n'
              'Surgery:\n'
              '• Laparoscopic cystectomy — the preferred approach. The cyst is carefully removed while preserving the healthy ovary tissue.\n'
              '• Recommended when the cyst is >5 cm, growing, causing symptoms, or to rule out malignancy\n'
              '• Care is taken not to rupture the cyst during surgery, as spillage of contents can cause chemical peritonitis\n\n'
              'Observation:\n'
              '• Small, asymptomatic dermoid cysts (<5 cm) may be monitored with regular ultrasounds\n'
              '• Monitoring interval is typically every 6–12 months\n\n'
              'After surgery:\n'
              '• Recurrence is uncommon (about 3–4%) after complete removal\n'
              '• Fertility is generally preserved when cystectomy (rather than oophorectomy) is performed',
    },
    {
      'title': 'When to See a Doctor',
      'body':
          'Consult your doctor if you experience:\n\n'
              '• Persistent pelvic pain or discomfort\n'
              '• A growing or enlarging pelvic mass\n'
              '• Sudden, severe abdominal pain (may indicate torsion or rupture — seek emergency care)\n'
              '• Pain with nausea and vomiting\n'
              '• Abdominal bloating that does not resolve\n\n'
              'Regular follow-up is important if you have a known dermoid cyst to monitor for growth and prevent complications like torsion.',
    },
  ];

  // ---------- Kannada content ----------
  static const List<Map<String, String>> _sectionsKn = [
    {
      'title': 'ಡರ್ಮಾಯ್ಡ್ ಸಿಸ್ಟ್ ಎಂದರೇನು?',
      'body':
          'ಡರ್ಮಾಯ್ಡ್ ಸಿಸ್ಟ್ (ಪಕ್ವ ಸಿಸ್ಟಿಕ್ ಟೆರಾಟೋಮಾ ಎಂದೂ ಕರೆಯಲಾಗುತ್ತದೆ) ಕೂದಲು, ಚರ್ಮ, ಕೊಬ್ಬು, ಹಲ್ಲುಗಳು ಮತ್ತು ಕೆಲವೊಮ್ಮೆ ಮೂಳೆ ಅಥವಾ ಕಾರ್ಟಿಲೇಜ್‌ನಂತಹ ವಿವಿಧ ಅಂಗಾಂಶಗಳನ್ನು ಒಳಗೊಂಡಿರುವ ಅಂಡಾಶಯದ ಜರ್ಮ್ ಕೋಶ ಗೆಡ್ಡೆಯಾಗಿದೆ. ಭಯಾನಕವಾಗಿ ಕೇಳಿಸಿದರೂ, ಡರ್ಮಾಯ್ಡ್ ಸಿಸ್ಟ್‌ಗಳು ಬಹುತೇಕ ಯಾವಾಗಲೂ ಹಾನಿಕರವಲ್ಲ.\n\n'
              'ಇವು ಅತ್ಯಂತ ಸಾಮಾನ್ಯ ಅಂಡಾಶಯದ ಗೆಡ್ಡೆಗಳಲ್ಲಿ ಒಂದಾಗಿದ್ದು, ಎಲ್ಲಾ ಅಂಡಾಶಯದ ನಿಯೋಪ್ಲಾಸ್ಮ್‌ಗಳಲ್ಲಿ ಸುಮಾರು ೧೦-೨೦% ಅನ್ನು ಹೊಂದಿವೆ. ೨೦-೪೦ ವರ್ಷ ವಯಸ್ಸಿನ ಮಹಿಳೆಯರಲ್ಲಿ ಹೆಚ್ಚಾಗಿ ಕಂಡುಬರುತ್ತವೆ.',
    },
    {
      'title': 'ಕಾರಣಗಳು ಮತ್ತು ಅಪಾಯಕಾರಿ ಅಂಶಗಳು',
      'body':
          'ಡರ್ಮಾಯ್ಡ್ ಸಿಸ್ಟ್‌ಗಳು ಅಂಡಾಶಯದ ಜರ್ಮ್ ಕೋಶಗಳಿಂದ ಉದ್ಭವಿಸುತ್ತವೆ — ಯಾವುದೇ ರೀತಿಯ ಅಂಗಾಂಶವಾಗಿ ಬೆಳೆಯಬಹುದಾದ ಕೋಶಗಳು.\n\n'
              'ಪ್ರಮುಖ ಅಂಶಗಳು:\n'
              '• ಇವು ಜನ್ಮಜಾತ (ಹುಟ್ಟಿನಿಂದಲೇ ಇರುತ್ತವೆ) ಆದರೆ ಪತ್ತೆಯಾಗುವ ಮೊದಲು ವರ್ಷಗಳ ಕಾಲ ನಿಧಾನವಾಗಿ ಬೆಳೆಯಬಹುದು\n'
              '• ರೋಗಿ ಮಾಡಿದ ಅಥವಾ ಮಾಡದ ಯಾವುದರಿಂದಲೂ ಉಂಟಾಗುವುದಿಲ್ಲ\n'
              '• ಜೀವನಶೈಲಿ, ಆಹಾರ ಅಥವಾ ಹಾರ್ಮೋನ್‌ಗಳಿಗೆ ಸಂಬಂಧಿಸಿಲ್ಲ\n\n'
              'ಅಪಾಯಕಾರಿ ಅಂಶಗಳು:\n'
              '• ಸಂತಾನೋತ್ಪತ್ತಿ ವಯಸ್ಸು (೨೦-೪೦ ವರ್ಷ)\n'
              '• ಸುಮಾರು ೧೦% ಪ್ರಕರಣಗಳಲ್ಲಿ ಎರಡೂ ಅಂಡಾಶಯಗಳಲ್ಲಿ ಕಂಡುಬರುತ್ತವೆ',
    },
    {
      'title': 'ರೋಗಲಕ್ಷಣಗಳು',
      'body':
          'ಅನೇಕ ಡರ್ಮಾಯ್ಡ್ ಸಿಸ್ಟ್‌ಗಳು ನಿಧಾನವಾಗಿ ಬೆಳೆಯುತ್ತವೆ ಮತ್ತು ವರ್ಷಗಳ ಕಾಲ ಯಾವುದೇ ಲಕ್ಷಣಗಳಿಲ್ಲದೆ ಇರುತ್ತವೆ.\n\n'
              'ಲಕ್ಷಣಗಳು ಕಂಡುಬಂದಾಗ:\n'
              '• ಸೊಂಟದ ಒಂದು ಬದಿಯಲ್ಲಿ ಮಂದ ನೋವು\n'
              '• ಹೊಟ್ಟೆಯಲ್ಲಿ ಭಾರ ಅಥವಾ ತುಂಬಿದ ಅನುಭವ\n'
              '• ಉಬ್ಬುವಿಕೆ\n'
              '• ಲೈಂಗಿಕ ಸಂಪರ್ಕದ ಸಮಯದಲ್ಲಿ ನೋವು\n\n'
              'ತೊಡಕುಗಳು (ಅಪರೂಪ ಆದರೆ ಮುಖ್ಯ):\n'
              '• ಅಂಡಾಶಯದ ತಿರುಚುವಿಕೆ (ಟಾರ್ಶನ್) — ಇದ್ದಕ್ಕಿದ್ದಂತೆ ತೀವ್ರ ನೋವು. ಇದು ಶಸ್ತ್ರಚಿಕಿತ್ಸಾ ತುರ್ತು.\n'
              '• ಒಡೆಯುವಿಕೆ — ಅಪರೂಪ, ಆದರೆ ತೀವ್ರ ನೋವು ಉಂಟುಮಾಡಬಹುದು',
    },
    {
      'title': 'ರೋಗನಿರ್ಣಯ',
      'body':
          'ಡರ್ಮಾಯ್ಡ್ ಸಿಸ್ಟ್‌ಗಳು ಚಿತ್ರಣದಲ್ಲಿ ವಿಶಿಷ್ಟ ಕಾಣಿಸಿಕೆ ಹೊಂದಿವೆ:\n\n'
              '೧. ಪೆಲ್ವಿಕ್ ಅಲ್ಟ್ರಾಸೌಂಡ್ — ಪ್ರಾಥಮಿಕ ಸಾಧನ. ಮಿಶ್ರ ಮಾದರಿ, ಪ್ರಕಾಶಮಾನ ಪ್ರತಿಧ್ವನಿ ಪ್ರದೇಶಗಳು (ಕೊಬ್ಬು/ಕ್ಯಾಲ್ಸಿಫಿಕೇಶನ್), "ಡರ್ಮಾಯ್ಡ್ ಪ್ಲಗ್" ಕಾಣಿಸುತ್ತದೆ.\n\n'
              '೨. CT ಅಥವಾ MRI — ರೋಗನಿರ್ಣಯ ಖಚಿತಪಡಿಸಲು ಬಳಸಬಹುದು. ಕೊಬ್ಬನ್ನು CT ಯಲ್ಲಿ ಸ್ಪಷ್ಟವಾಗಿ ಕಾಣಬಹುದು.\n\n'
              '೩. ಎಕ್ಸ್-ರೇ — ಹಲ್ಲುಗಳು ಅಥವಾ ಮೂಳೆ ತುಣುಕುಗಳು ಕಾಣಿಸಬಹುದು.\n\n'
              '೪. ಗೆಡ್ಡೆ ಮಾರ್ಕರ್‌ಗಳು — AFP, CA-125 ಪರೀಕ್ಷೆ.',
    },
    {
      'title': 'ಚಿಕಿತ್ಸಾ ಆಯ್ಕೆಗಳು',
      'body':
          'ಕ್ರಿಯಾತ್ಮಕ ಚೀಲಗಳಿಗಿಂತ ಭಿನ್ನವಾಗಿ, ಡರ್ಮಾಯ್ಡ್ ಸಿಸ್ಟ್‌ಗಳು ತಾವಾಗಿಯೇ ಕರಗುವುದಿಲ್ಲ ಮತ್ತು ಸಾಮಾನ್ಯವಾಗಿ ಶಸ್ತ್ರಚಿಕಿತ್ಸಾ ತೆಗೆಯುವಿಕೆ ಅಗತ್ಯ.\n\n'
              'ಶಸ್ತ್ರಚಿಕಿತ್ಸೆ:\n'
              '• ಲ್ಯಾಪರೊಸ್ಕೋಪಿಕ್ ಸಿಸ್ಟೆಕ್ಟಮಿ — ಆದ್ಯತೆಯ ವಿಧಾನ\n'
              '• ಚೀಲವು >೫ ಸೆಂ.ಮೀ., ಬೆಳೆಯುತ್ತಿರುವ ಅಥವಾ ಲಕ್ಷಣಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತಿರುವಾಗ ಶಿಫಾರಸು\n'
              '• ಆರೋಗ್ಯಕರ ಅಂಡಾಶಯ ಅಂಗಾಂಶವನ್ನು ಸಂರಕ್ಷಿಸಲಾಗುತ್ತದೆ\n\n'
              'ಅವಲೋಕನ:\n'
              '• ಸಣ್ಣ, ಲಕ್ಷಣರಹಿತ ಡರ್ಮಾಯ್ಡ್ ಸಿಸ್ಟ್‌ಗಳನ್ನು (<೫ ಸೆಂ.ಮೀ.) ನಿಯಮಿತ ಅಲ್ಟ್ರಾಸೌಂಡ್‌ಗಳೊಂದಿಗೆ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಬಹುದು\n'
              '• ಪ್ರತಿ ೬-೧೨ ತಿಂಗಳಿಗೊಮ್ಮೆ ಮೇಲ್ವಿಚಾರಣೆ\n\n'
              'ಶಸ್ತ್ರಚಿಕಿತ್ಸೆ ನಂತರ:\n'
              '• ಸಂಪೂರ್ಣ ತೆಗೆಯುವಿಕೆ ನಂತರ ಪುನರಾವರ್ತನೆ ಅಪರೂಪ (ಸುಮಾರು ೩-೪%)\n'
              '• ಫಲವತ್ತತೆ ಸಾಮಾನ್ಯವಾಗಿ ಸಂರಕ್ಷಿಸಲ್ಪಡುತ್ತದೆ',
    },
    {
      'title': 'ವೈದ್ಯರನ್ನು ಯಾವಾಗ ಭೇಟಿ ಮಾಡಬೇಕು?',
      'body':
          'ಈ ಲಕ್ಷಣಗಳು ಕಂಡುಬಂದರೆ ವೈದ್ಯರನ್ನು ಸಂಪರ್ಕಿಸಿ:\n\n'
              '• ನಿರಂತರ ಸೊಂಟದ ನೋವು ಅಥವಾ ಅಸ್ವಸ್ಥತೆ\n'
              '• ಬೆಳೆಯುತ್ತಿರುವ ಸೊಂಟದ ಗಡ್ಡೆ\n'
              '• ಇದ್ದಕ್ಕಿದ್ದಂತೆ ತೀವ್ರ ಹೊಟ್ಟೆ ನೋವು (ತಿರುಚುವಿಕೆ ಅಥವಾ ಒಡೆಯುವಿಕೆ ಸೂಚಿಸಬಹುದು — ತುರ್ತು ಚಿಕಿತ್ಸೆ ಪಡೆಯಿರಿ)\n'
              '• ವಾಕರಿಕೆ ಮತ್ತು ವಾಂತಿಯೊಂದಿಗೆ ನೋವು\n'
              '• ಕಡಿಮೆಯಾಗದ ಹೊಟ್ಟೆ ಉಬ್ಬುವಿಕೆ\n\n'
              'ಡರ್ಮಾಯ್ಡ್ ಸಿಸ್ಟ್ ಇದೆ ಎಂದು ತಿಳಿದಿದ್ದರೆ, ಬೆಳವಣಿಗೆ ಮೇಲ್ವಿಚಾರಣೆ ಮಾಡಲು ನಿಯಮಿತ ಅನುಸರಣೆ ಮುಖ್ಯ.',
    },
  ];

  // ---------- UI labels by language ----------
  static const Map<String, Map<String, String>> _labels = {
    'en': {
      'appBar': 'Dermoid Cyst (Teratoma)',
      'sectionHeader': 'About This Condition',
      'disclaimer':
          'This content is for educational purposes only and does not replace professional medical advice. Always consult your doctor for diagnosis and treatment.',
    },
    'kn': {
      'appBar': 'ಡರ್ಮಾಯ್ಡ್ ಸಿಸ್ಟ್ (ಟೆರಾಟೋಮಾ)',
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
