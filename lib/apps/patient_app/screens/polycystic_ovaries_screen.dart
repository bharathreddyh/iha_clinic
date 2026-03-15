import 'package:flutter/material.dart';
import '../../../core/widgets/hospital_app_bar.dart';

class PolycysticOvariesScreen extends StatefulWidget {
  const PolycysticOvariesScreen({super.key});

  @override
  State<PolycysticOvariesScreen> createState() =>
      _PolycysticOvariesScreenState();
}

class _PolycysticOvariesScreenState extends State<PolycysticOvariesScreen> {
  static const Color _themeColor = Color(0xFF6A1B9A);

  String _language = 'en';

  // ---------- English content ----------
  static const List<Map<String, String>> _sectionsEn = [
    {
      'title': 'What are Polycystic Ovaries?',
      'body':
          'Polycystic ovaries is a condition in which the ovaries contain many small, immature follicles (fluid-filled sacs) that appear as tiny cysts on ultrasound. The ovaries may be enlarged and have a characteristic "string of pearls" appearance.\n\n'
              'It is important to distinguish between polycystic ovarian morphology (the appearance of the ovaries on ultrasound) and Polycystic Ovary Syndrome (PCOS), which is a hormonal disorder with additional symptoms like irregular periods, excess androgen, and metabolic issues.\n\n'
              'Having polycystic ovaries on ultrasound alone does not necessarily mean you have PCOS.',
    },
    {
      'title': 'Causes & Risk Factors',
      'body':
          'The exact cause of polycystic ovaries is not fully understood, but several factors play a role:\n\n'
              '• Hormonal imbalance — elevated levels of androgens (male hormones) and insulin\n'
              '• Insulin resistance — the body\'s cells do not respond well to insulin, leading to higher insulin levels\n'
              '• Genetics — PCOS tends to run in families\n'
              '• Low-grade inflammation — may stimulate androgen production\n\n'
              'Risk factors include:\n'
              '• Family history of PCOS\n'
              '• Obesity or excess weight\n'
              '• Sedentary lifestyle\n'
              '• Type 2 diabetes or insulin resistance',
    },
    {
      'title': 'Symptoms',
      'body':
          'Polycystic ovaries without PCOS may cause no symptoms at all. When associated with PCOS, symptoms may include:\n\n'
              '• Irregular, infrequent, or absent menstrual periods\n'
              '• Heavy periods when they do occur\n'
              '• Excess facial or body hair (hirsutism)\n'
              '• Acne or oily skin\n'
              '• Thinning hair or hair loss from the scalp\n'
              '• Weight gain, especially around the abdomen\n'
              '• Difficulty getting pregnant (due to irregular or absent ovulation)\n'
              '• Darkening of skin in creases (acanthosis nigricans)\n\n'
              'Symptoms often begin during puberty but may also develop later in life.',
    },
    {
      'title': 'Diagnosis',
      'body':
          'Polycystic ovaries and PCOS are diagnosed using a combination of:\n\n'
              '1. Pelvic ultrasound — the ovaries show 12 or more follicles (2–9 mm each) or an ovarian volume greater than 10 mL. This is the classic "polycystic" appearance.\n\n'
              '2. Blood tests — to check hormone levels including:\n'
              '   • Androgens (testosterone, DHEA-S)\n'
              '   • LH and FSH ratio\n'
              '   • Insulin and glucose levels\n'
              '   • Thyroid function tests\n'
              '   • Prolactin levels\n\n'
              '3. Clinical evaluation — assessment of symptoms like irregular periods, hirsutism, and acne.\n\n'
              'The Rotterdam criteria require at least 2 of 3: irregular ovulation, excess androgens, and polycystic ovaries on ultrasound.',
    },
    {
      'title': 'Treatment Options',
      'body':
          'Treatment depends on whether PCOS is present and which symptoms are most bothersome.\n\n'
              'Lifestyle changes (first-line treatment):\n'
              '• Weight management — even 5–10% weight loss can improve symptoms significantly\n'
              '• Regular exercise — at least 150 minutes of moderate activity per week\n'
              '• Balanced diet — low glycaemic index foods, reduced refined carbohydrates\n\n'
              'Medications:\n'
              '• Hormonal contraceptives — regulate periods and reduce androgens\n'
              '• Metformin — improves insulin resistance\n'
              '• Anti-androgen medications — for hirsutism and acne\n'
              '• Ovulation induction (clomiphene, letrozole) — for women trying to conceive\n\n'
              'Fertility treatments:\n'
              '• If lifestyle changes and medications are not enough, IVF or ovarian drilling may be considered',
    },
    {
      'title': 'When to See a Doctor',
      'body':
          'Consult your doctor if you experience:\n\n'
              '• Irregular or missed periods for more than 3 months\n'
              '• Unusual hair growth on the face or body\n'
              '• Persistent acne that does not respond to treatment\n'
              '• Difficulty getting pregnant after 12 months of trying\n'
              '• Unexplained weight gain\n'
              '• Signs of diabetes (increased thirst, frequent urination)\n\n'
              'Early diagnosis and management of PCOS can help prevent long-term complications such as type 2 diabetes, heart disease, and endometrial problems.',
    },
  ];

  // ---------- Kannada content ----------
  static const List<Map<String, String>> _sectionsKn = [
    {
      'title': 'ಪಾಲಿಸಿಸ್ಟಿಕ್ ಅಂಡಾಶಯಗಳು ಎಂದರೇನು?',
      'body':
          'ಪಾಲಿಸಿಸ್ಟಿಕ್ ಅಂಡಾಶಯಗಳು ಎಂಬ ಸ್ಥಿತಿಯಲ್ಲಿ ಅಂಡಾಶಯಗಳು ಅನೇಕ ಸಣ್ಣ, ಅಪಕ್ವ ಫೋಲಿಕಲ್‌ಗಳನ್ನು (ದ್ರವ ತುಂಬಿದ ಚೀಲಗಳು) ಹೊಂದಿರುತ್ತವೆ. ಅಲ್ಟ್ರಾಸೌಂಡ್‌ನಲ್ಲಿ ಇವು ಸಣ್ಣ ಚೀಲಗಳಾಗಿ ಕಾಣಿಸುತ್ತವೆ.\n\n'
              'ಪಾಲಿಸಿಸ್ಟಿಕ್ ಅಂಡಾಶಯದ ಚಿತ್ರಣ (ಅಲ್ಟ್ರಾಸೌಂಡ್ ಮೇಲಿನ ಕಾಣಿಸಿಕೆ) ಮತ್ತು ಪಾಲಿಸಿಸ್ಟಿಕ್ ಅಂಡಾಶಯ ಸಿಂಡ್ರೋಮ್ (PCOS) ನಡುವಿನ ವ್ಯತ್ಯಾಸವನ್ನು ಅರ್ಥಮಾಡಿಕೊಳ್ಳುವುದು ಮುಖ್ಯ. PCOS ಒಂದು ಹಾರ್ಮೋನ್ ಅಸ್ವಸ್ಥತೆಯಾಗಿದ್ದು ಅನಿಯಮಿತ ಋತುಸ್ರಾವ, ಹೆಚ್ಚಿನ ಆ್ಯಂಡ್ರೋಜೆನ್ ಮತ್ತು ಚಯಾಪಚಯ ಸಮಸ್ಯೆಗಳಂತಹ ಹೆಚ್ಚುವರಿ ಲಕ್ಷಣಗಳನ್ನು ಹೊಂದಿರುತ್ತದೆ.',
    },
    {
      'title': 'ಕಾರಣಗಳು ಮತ್ತು ಅಪಾಯಕಾರಿ ಅಂಶಗಳು',
      'body':
          'ಪಾಲಿಸಿಸ್ಟಿಕ್ ಅಂಡಾಶಯಗಳ ನಿಖರ ಕಾರಣ ಸಂಪೂರ್ಣವಾಗಿ ತಿಳಿದಿಲ್ಲ, ಆದರೆ ಹಲವು ಅಂಶಗಳು ಪಾತ್ರ ವಹಿಸುತ್ತವೆ:\n\n'
              '• ಹಾರ್ಮೋನ್ ಅಸಮತೋಲನ — ಆ್ಯಂಡ್ರೋಜೆನ್‌ಗಳು ಮತ್ತು ಇನ್ಸುಲಿನ್ ಮಟ್ಟ ಹೆಚ್ಚಳ\n'
              '• ಇನ್ಸುಲಿನ್ ಪ್ರತಿರೋಧ\n'
              '• ಆನುವಂಶಿಕತೆ — PCOS ಕುಟುಂಬಗಳಲ್ಲಿ ಕಂಡುಬರುತ್ತದೆ\n\n'
              'ಅಪಾಯಕಾರಿ ಅಂಶಗಳು:\n'
              '• PCOS ಕುಟುಂಬ ಇತಿಹಾಸ\n'
              '• ಸ್ಥೂಲಕಾಯ ಅಥವಾ ಅಧಿಕ ತೂಕ\n'
              '• ನಿಷ್ಕ್ರಿಯ ಜೀವನಶೈಲಿ\n'
              '• ಮಧುಮೇಹ ಅಥವಾ ಇನ್ಸುಲಿನ್ ಪ್ರತಿರೋಧ',
    },
    {
      'title': 'ರೋಗಲಕ್ಷಣಗಳು',
      'body':
          'PCOS ಇಲ್ಲದ ಪಾಲಿಸಿಸ್ಟಿಕ್ ಅಂಡಾಶಯಗಳು ಯಾವುದೇ ಲಕ್ಷಣಗಳನ್ನು ಉಂಟುಮಾಡದಿರಬಹುದು. PCOS ಇದ್ದಾಗ ಲಕ್ಷಣಗಳು:\n\n'
              '• ಅನಿಯಮಿತ, ವಿರಳ ಅಥವಾ ಇಲ್ಲದ ಋತುಸ್ರಾವ\n'
              '• ಅಧಿಕ ಮುಖ ಅಥವಾ ದೇಹದ ಕೂದಲು (ಹಿರ್ಸುಟಿಸಂ)\n'
              '• ಮೊಡವೆ ಅಥವಾ ಎಣ್ಣೆಯುಕ್ತ ಚರ್ಮ\n'
              '• ತಲೆಯ ಕೂದಲು ಉದುರುವಿಕೆ\n'
              '• ತೂಕ ಹೆಚ್ಚಳ, ವಿಶೇಷವಾಗಿ ಹೊಟ್ಟೆಯ ಸುತ್ತ\n'
              '• ಗರ್ಭಧರಿಸಲು ಕಷ್ಟ\n'
              '• ಚರ್ಮದ ಮಡಿಕೆಗಳಲ್ಲಿ ಕಪ್ಪಾಗುವಿಕೆ',
    },
    {
      'title': 'ರೋಗನಿರ್ಣಯ',
      'body':
          'ಪಾಲಿಸಿಸ್ಟಿಕ್ ಅಂಡಾಶಯಗಳು ಮತ್ತು PCOS ಅನ್ನು ಈ ಕೆಳಗಿನ ವಿಧಾನಗಳಿಂದ ಪತ್ತೆ ಮಾಡಲಾಗುತ್ತದೆ:\n\n'
              '೧. ಪೆಲ್ವಿಕ್ ಅಲ್ಟ್ರಾಸೌಂಡ್ — ಅಂಡಾಶಯಗಳಲ್ಲಿ ೧೨ ಅಥವಾ ಅದಕ್ಕಿಂತ ಹೆಚ್ಚು ಫೋಲಿಕಲ್‌ಗಳು ಕಾಣಿಸುತ್ತವೆ.\n\n'
              '೨. ರಕ್ತ ಪರೀಕ್ಷೆಗಳು — ಹಾರ್ಮೋನ್ ಮಟ್ಟಗಳು, ಇನ್ಸುಲಿನ್, ಗ್ಲೂಕೋಸ್, ಥೈರಾಯ್ಡ್ ಪರೀಕ್ಷೆಗಳು.\n\n'
              '೩. ಕ್ಲಿನಿಕಲ್ ಮೌಲ್ಯಮಾಪನ — ಅನಿಯಮಿತ ಋತುಸ್ರಾವ, ಹಿರ್ಸುಟಿಸಂ ಮತ್ತು ಮೊಡವೆಯ ಮೌಲ್ಯಮಾಪನ.\n\n'
              'ರಾಟರ್‌ಡ್ಯಾಮ್ ಮಾನದಂಡದ ಪ್ರಕಾರ ೩ ರಲ್ಲಿ ಕನಿಷ್ಠ ೨ ಅಂಶಗಳು ಅಗತ್ಯ.',
    },
    {
      'title': 'ಚಿಕಿತ್ಸಾ ಆಯ್ಕೆಗಳು',
      'body':
          'ಚಿಕಿತ್ಸೆಯು PCOS ಇದೆಯೇ ಮತ್ತು ಯಾವ ಲಕ್ಷಣಗಳು ಹೆಚ್ಚು ತೊಂದರೆ ನೀಡುತ್ತಿವೆ ಎಂಬುದರ ಮೇಲೆ ಅವಲಂಬಿತ.\n\n'
              'ಜೀವನಶೈಲಿ ಬದಲಾವಣೆಗಳು (ಮೊದಲ ಹಂತದ ಚಿಕಿತ್ಸೆ):\n'
              '• ತೂಕ ನಿರ್ವಹಣೆ — ೫-೧೦% ತೂಕ ನಷ್ಟ ಲಕ್ಷಣಗಳನ್ನು ಸುಧಾರಿಸಬಹುದು\n'
              '• ನಿಯಮಿತ ವ್ಯಾಯಾಮ\n'
              '• ಸಮತೋಲಿತ ಆಹಾರ\n\n'
              'ಔಷಧಿಗಳು:\n'
              '• ಹಾರ್ಮೋನ್ ಗರ್ಭನಿರೋಧಕಗಳು\n'
              '• ಮೆಟ್‌ಫಾರ್ಮಿನ್ — ಇನ್ಸುಲಿನ್ ಪ್ರತಿರೋಧ ಸುಧಾರಣೆ\n'
              '• ಆ್ಯಂಟಿ-ಆ್ಯಂಡ್ರೋಜೆನ್ ಔಷಧಿಗಳು\n'
              '• ಅಂಡೋತ್ಪತ್ತಿ ಪ್ರೇರಣೆ — ಗರ್ಭಧರಿಸಲು ಬಯಸುವ ಮಹಿಳೆಯರಿಗೆ',
    },
    {
      'title': 'ವೈದ್ಯರನ್ನು ಯಾವಾಗ ಭೇಟಿ ಮಾಡಬೇಕು?',
      'body':
          'ಈ ಲಕ್ಷಣಗಳು ಕಂಡುಬಂದರೆ ವೈದ್ಯರನ್ನು ಸಂಪರ್ಕಿಸಿ:\n\n'
              '• ೩ ತಿಂಗಳಿಗಿಂತ ಹೆಚ್ಚು ಕಾಲ ಅನಿಯಮಿತ ಅಥವಾ ಇಲ್ಲದ ಋತುಸ್ರಾವ\n'
              '• ಮುಖ ಅಥವಾ ದೇಹದಲ್ಲಿ ಅಸಾಮಾನ್ಯ ಕೂದಲು ಬೆಳವಣಿಗೆ\n'
              '• ಚಿಕಿತ್ಸೆಗೆ ಸ್ಪಂದಿಸದ ನಿರಂತರ ಮೊಡವೆ\n'
              '• ೧೨ ತಿಂಗಳು ಪ್ರಯತ್ನಿಸಿದ ನಂತರ ಗರ್ಭಧರಿಸಲು ಕಷ್ಟ\n'
              '• ವಿವರಿಸಲಾಗದ ತೂಕ ಹೆಚ್ಚಳ\n\n'
              'ಆರಂಭಿಕ ರೋಗನಿರ್ಣಯ ಮತ್ತು ನಿರ್ವಹಣೆ ದೀರ್ಘಕಾಲೀನ ತೊಡಕುಗಳನ್ನು ತಡೆಯಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ.',
    },
  ];

  // ---------- UI labels by language ----------
  static const Map<String, Map<String, String>> _labels = {
    'en': {
      'appBar': 'Polycystic Ovaries',
      'sectionHeader': 'About This Condition',
      'disclaimer':
          'This content is for educational purposes only and does not replace professional medical advice. Always consult your doctor for diagnosis and treatment.',
    },
    'kn': {
      'appBar': 'ಪಾಲಿಸಿಸ್ಟಿಕ್ ಅಂಡಾಶಯಗಳು',
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
