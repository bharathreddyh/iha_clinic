import 'package:flutter/material.dart';
import '../../../core/widgets/hospital_app_bar.dart';

class MucinousCystadenomaScreen extends StatefulWidget {
  const MucinousCystadenomaScreen({super.key});

  @override
  State<MucinousCystadenomaScreen> createState() =>
      _MucinousCystadenomaScreenState();
}

class _MucinousCystadenomaScreenState extends State<MucinousCystadenomaScreen> {
  static const Color _themeColor = Color(0xFF00838F);

  String _language = 'en';

  // ---------- English content ----------
  static const List<Map<String, String>> _sectionsEn = [
    {
      'title': 'What is a Mucinous Cystadenoma?',
      'body':
          'A mucinous cystadenoma is a benign (non-cancerous) ovarian tumour that is filled with thick, sticky, gel-like fluid called mucin. It is one of the common benign epithelial ovarian tumours.\n\n'
              'Unlike serous cystadenomas, mucinous cystadenomas are often multilocular (have multiple chambers or compartments separated by thin walls called septations). They tend to grow larger than other ovarian tumours and can sometimes reach enormous sizes (>30 cm).\n\n'
              'Mucinous cystadenomas account for about 15–20% of all ovarian neoplasms and are most common in women between 30 and 50 years of age.',
    },
    {
      'title': 'Causes & Risk Factors',
      'body':
          'The exact cause of mucinous cystadenomas is not known. They arise from the epithelial cells lining the ovary.\n\n'
              'Key points:\n'
              '• They are NOT related to the menstrual cycle or ovulation\n'
              '• They are NOT caused by hormonal changes, diet, or lifestyle\n'
              '• There is no known way to prevent them\n\n'
              'Risk factors:\n'
              '• Age — most common between 30 and 50 years\n'
              '• Smoking — some studies suggest a slightly increased risk\n'
              '• No strong genetic or hereditary association for the benign form\n\n'
              'Important: In rare cases (<5%), mucinous tumours may be borderline or malignant, which is why surgical removal and histopathological examination are important for large or suspicious cysts.',
    },
    {
      'title': 'Symptoms',
      'body':
          'Mucinous cystadenomas often grow slowly and may cause no symptoms for a long time. Because they can grow very large, symptoms are often related to the mass effect.\n\n'
              'Common symptoms include:\n'
              '• Progressive abdominal enlargement or bloating\n'
              '• Dull, aching pelvic or abdominal pain\n'
              '• Feeling of heaviness or fullness\n'
              '• A visible or palpable abdominal mass\n'
              '• Increased urinary frequency — pressure on the bladder\n'
              '• Constipation — pressure on the bowel\n'
              '• Shortness of breath (if very large, pushing the diaphragm up)\n\n'
              'Complications:\n'
              '• Ovarian torsion — the heavy cyst may cause the ovary to twist\n'
              '• Rupture — rare but can cause pseudomyxoma peritonei (mucin spill into the abdomen), which is a serious condition\n'
              '• Pressure on surrounding organs',
    },
    {
      'title': 'Diagnosis',
      'body':
          'Mucinous cystadenomas have characteristic features on imaging:\n\n'
              '1. Transvaginal / transabdominal ultrasound — the primary tool. Typical features:\n'
              '   • Multilocular (multiple compartments) cyst\n'
              '   • Thin internal septations\n'
              '   • Echogenic (not completely clear) fluid content due to mucin\n'
              '   • Often large at presentation\n'
              '   • No solid vascular components (if benign)\n\n'
              '2. CT scan — useful for very large tumours; helps assess the extent and relationship to surrounding structures.\n\n'
              '3. MRI — provides excellent soft tissue detail; helps differentiate benign from borderline/malignant.\n\n'
              '4. Tumour markers — CA-125 may be normal or mildly elevated. CEA and CA 19-9 may also be checked.\n\n'
              '5. Definitive diagnosis — requires histopathological examination after surgical removal.',
    },
    {
      'title': 'Treatment Options',
      'body':
          'Mucinous cystadenomas generally require surgical removal because they tend to grow large and do not resolve on their own.\n\n'
              'Surgery:\n'
              '• Laparoscopic cystectomy — for smaller cysts in women who wish to preserve fertility; the cyst is carefully removed intact to avoid rupture and mucin spillage\n'
              '• Laparotomy — may be necessary for very large cysts that cannot be removed laparoscopically\n'
              '• Oophorectomy — removal of the ovary; may be considered for large tumours or in postmenopausal women\n\n'
              'Important surgical considerations:\n'
              '• The cyst should ideally be removed intact (without rupture) to prevent mucin spillage\n'
              '• The specimen is sent for histopathology to confirm benign nature and rule out borderline or malignant changes\n\n'
              'After surgery:\n'
              '• Prognosis is excellent for benign mucinous cystadenomas\n'
              '• Recurrence after complete removal is uncommon\n'
              '• Regular follow-up ultrasounds may be recommended',
    },
    {
      'title': 'When to See a Doctor',
      'body':
          'Consult your doctor if you experience:\n\n'
              '• Progressive abdominal enlargement or bloating that does not resolve\n'
              '• Persistent pelvic or abdominal pain\n'
              '• A palpable lump in the abdomen\n'
              '• Sudden, severe abdominal pain (may indicate torsion or rupture — seek emergency care)\n'
              '• Unexplained changes in bowel or bladder habits\n'
              '• Shortness of breath with abdominal distension\n\n'
              'Early evaluation of large ovarian masses is important to rule out malignancy and prevent complications.',
    },
  ];

  // ---------- Kannada content ----------
  static const List<Map<String, String>> _sectionsKn = [
    {
      'title': 'ಮ್ಯೂಸಿನಸ್ ಸಿಸ್ಟಡೆನೋಮಾ ಎಂದರೇನು?',
      'body':
          'ಮ್ಯೂಸಿನಸ್ ಸಿಸ್ಟಡೆನೋಮಾ ಎಂದರೆ ದಪ್ಪ, ಅಂಟಿಕೊಳ್ಳುವ, ಜೆಲ್ ತರಹದ ದ್ರವದಿಂದ (ಮ್ಯೂಸಿನ್) ತುಂಬಿದ ಹಾನಿಕರವಲ್ಲದ ಅಂಡಾಶಯದ ಗೆಡ್ಡೆಯಾಗಿದೆ. ಇದು ಸಾಮಾನ್ಯ ಬೆನಿಗ್ನ್ ಎಪಿಥೀಲಿಯಲ್ ಅಂಡಾಶಯದ ಗೆಡ್ಡೆಗಳಲ್ಲಿ ಒಂದಾಗಿದೆ.\n\n'
              'ಮ್ಯೂಸಿನಸ್ ಸಿಸ್ಟಡೆನೋಮಾಗಳು ಸಾಮಾನ್ಯವಾಗಿ ಬಹು-ಕೋಣೆಗಳನ್ನು ಹೊಂದಿರುತ್ತವೆ ಮತ್ತು ಇತರ ಅಂಡಾಶಯದ ಗೆಡ್ಡೆಗಳಿಗಿಂತ ದೊಡ್ಡದಾಗಿ ಬೆಳೆಯುತ್ತವೆ. ಎಲ್ಲಾ ಅಂಡಾಶಯದ ನಿಯೋಪ್ಲಾಸ್ಮ್‌ಗಳಲ್ಲಿ ಸುಮಾರು ೧೫-೨೦% ಅನ್ನು ಹೊಂದಿವೆ.',
    },
    {
      'title': 'ಕಾರಣಗಳು ಮತ್ತು ಅಪಾಯಕಾರಿ ಅಂಶಗಳು',
      'body':
          'ಮ್ಯೂಸಿನಸ್ ಸಿಸ್ಟಡೆನೋಮಾಗಳ ನಿಖರ ಕಾರಣ ತಿಳಿದಿಲ್ಲ. ಅಂಡಾಶಯದ ಎಪಿಥೀಲಿಯಲ್ ಕೋಶಗಳಿಂದ ಉದ್ಭವಿಸುತ್ತವೆ.\n\n'
              'ಪ್ರಮುಖ ಅಂಶಗಳು:\n'
              '• ಋತುಚಕ್ರ ಅಥವಾ ಅಂಡೋತ್ಪತ್ತಿಗೆ ಸಂಬಂಧಿಸಿಲ್ಲ\n'
              '• ಹಾರ್ಮೋನ್ ಬದಲಾವಣೆಗಳು ಅಥವಾ ಜೀವನಶೈಲಿಯಿಂದ ಉಂಟಾಗುವುದಿಲ್ಲ\n\n'
              'ಅಪಾಯಕಾರಿ ಅಂಶಗಳು:\n'
              '• ವಯಸ್ಸು — ೩೦-೫೦ ವಯಸ್ಸಿನ ನಡುವೆ ಹೆಚ್ಚು ಸಾಮಾನ್ಯ\n'
              '• ಧೂಮಪಾನ — ಕೆಲವು ಅಧ್ಯಯನಗಳು ಸ್ವಲ್ಪ ಹೆಚ್ಚಿದ ಅಪಾಯವನ್ನು ಸೂಚಿಸುತ್ತವೆ',
    },
    {
      'title': 'ರೋಗಲಕ್ಷಣಗಳು',
      'body':
          'ಮ್ಯೂಸಿನಸ್ ಸಿಸ್ಟಡೆನೋಮಾಗಳು ನಿಧಾನವಾಗಿ ಬೆಳೆಯುತ್ತವೆ ಮತ್ತು ದೀರ್ಘಕಾಲ ಲಕ್ಷಣಗಳಿಲ್ಲದೆ ಇರಬಹುದು.\n\n'
              'ಸಾಮಾನ್ಯ ಲಕ್ಷಣಗಳು:\n'
              '• ಹೆಚ್ಚುತ್ತಿರುವ ಹೊಟ್ಟೆ ಉಬ್ಬುವಿಕೆ\n'
              '• ಸೊಂಟ ಅಥವಾ ಹೊಟ್ಟೆಯ ಮಂದ ನೋವು\n'
              '• ಭಾರ ಅಥವಾ ತುಂಬಿದ ಅನುಭವ\n'
              '• ಹೊಟ್ಟೆಯಲ್ಲಿ ಗಡ್ಡೆ ಕಾಣಿಸುವುದು\n'
              '• ಆಗಾಗ್ಗೆ ಮೂತ್ರ ವಿಸರ್ಜನೆ\n'
              '• ಮಲಬದ್ಧತೆ\n\n'
              'ತೊಡಕುಗಳು:\n'
              '• ಅಂಡಾಶಯದ ತಿರುಚುವಿಕೆ\n'
              '• ಒಡೆಯುವಿಕೆ — ಅಪರೂಪ ಆದರೆ ಗಂಭೀರ',
    },
    {
      'title': 'ರೋಗನಿರ್ಣಯ',
      'body':
          'ಮ್ಯೂಸಿನಸ್ ಸಿಸ್ಟಡೆನೋಮಾಗಳನ್ನು ಈ ವಿಧಾನಗಳಿಂದ ಪತ್ತೆ ಮಾಡಲಾಗುತ್ತದೆ:\n\n'
              '೧. ಅಲ್ಟ್ರಾಸೌಂಡ್ — ಬಹು-ಕೋಣೆಯ ಚೀಲ, ತೆಳು ಸೆಪ್ಟೇಷನ್‌ಗಳು, ಮ್ಯೂಸಿನ್‌ನಿಂದ ಎಕೋಜೆನಿಕ್ ದ್ರವ.\n\n'
              '೨. CT ಸ್ಕ್ಯಾನ್ — ತುಂಬಾ ದೊಡ್ಡ ಗೆಡ್ಡೆಗಳಿಗೆ ಉಪಯುಕ್ತ.\n\n'
              '೩. MRI — ಬೆನಿಗ್ನ್ ಮತ್ತು ಮ್ಯಾಲಿಗ್ನೆಂಟ್ ನಡುವೆ ವ್ಯತ್ಯಾಸ ಮಾಡಲು.\n\n'
              '೪. ಗೆಡ್ಡೆ ಮಾರ್ಕರ್‌ಗಳು — CA-125, CEA, CA 19-9.\n\n'
              '೫. ಖಚಿತ ರೋಗನಿರ್ಣಯಕ್ಕೆ ಶಸ್ತ್ರಚಿಕಿತ್ಸಾ ತೆಗೆಯುವಿಕೆ ನಂತರ ಹಿಸ್ಟೋಪ್ಯಾಥೊಲಾಜಿಕಲ್ ಪರೀಕ್ಷೆ ಅಗತ್ಯ.',
    },
    {
      'title': 'ಚಿಕಿತ್ಸಾ ಆಯ್ಕೆಗಳು',
      'body':
          'ಮ್ಯೂಸಿನಸ್ ಸಿಸ್ಟಡೆನೋಮಾಗಳು ಸಾಮಾನ್ಯವಾಗಿ ಶಸ್ತ್ರಚಿಕಿತ್ಸಾ ತೆಗೆಯುವಿಕೆ ಅಗತ್ಯ ಏಕೆಂದರೆ ಇವು ದೊಡ್ಡದಾಗಿ ಬೆಳೆಯುತ್ತವೆ.\n\n'
              'ಶಸ್ತ್ರಚಿಕಿತ್ಸೆ:\n'
              '• ಲ್ಯಾಪರೊಸ್ಕೋಪಿಕ್ ಸಿಸ್ಟೆಕ್ಟಮಿ — ಸಣ್ಣ ಚೀಲಗಳಿಗೆ, ಫಲವತ್ತತೆ ಸಂರಕ್ಷಣೆ\n'
              '• ಲ್ಯಾಪರೊಟಮಿ — ತುಂಬಾ ದೊಡ್ಡ ಚೀಲಗಳಿಗೆ\n'
              '• ಊಫೊರೆಕ್ಟಮಿ — ಋತುಬಂಧದ ನಂತರದ ಮಹಿಳೆಯರಲ್ಲಿ ಪರಿಗಣಿಸಬಹುದು\n\n'
              'ಮುಖ್ಯ ಅಂಶ:\n'
              '• ಮ್ಯೂಸಿನ್ ಸೋರಿಕೆ ತಡೆಯಲು ಚೀಲವನ್ನು ಅಖಂಡವಾಗಿ ತೆಗೆಯಬೇಕು\n\n'
              'ಶಸ್ತ್ರಚಿಕಿತ್ಸೆ ನಂತರ:\n'
              '• ಮುನ್ನರಿವು ಅತ್ಯುತ್ತಮ\n'
              '• ಪುನರಾವರ್ತನೆ ಅಪರೂಪ',
    },
    {
      'title': 'ವೈದ್ಯರನ್ನು ಯಾವಾಗ ಭೇಟಿ ಮಾಡಬೇಕು?',
      'body':
          'ಈ ಲಕ್ಷಣಗಳು ಕಂಡುಬಂದರೆ ವೈದ್ಯರನ್ನು ಸಂಪರ್ಕಿಸಿ:\n\n'
              '• ಕಡಿಮೆಯಾಗದ ಹೆಚ್ಚುತ್ತಿರುವ ಹೊಟ್ಟೆ ಉಬ್ಬುವಿಕೆ\n'
              '• ನಿರಂತರ ಸೊಂಟ ಅಥವಾ ಹೊಟ್ಟೆ ನೋವು\n'
              '• ಹೊಟ್ಟೆಯಲ್ಲಿ ಗಡ್ಡೆ ಕಾಣಿಸುವುದು\n'
              '• ಇದ್ದಕ್ಕಿದ್ದಂತೆ ತೀವ್ರ ಹೊಟ್ಟೆ ನೋವು (ತುರ್ತು ಚಿಕಿತ್ಸೆ ಪಡೆಯಿರಿ)\n'
              '• ಮೂತ್ರ ಅಥವಾ ಮಲವಿಸರ್ಜನೆ ಬದಲಾವಣೆಗಳು\n'
              '• ಹೊಟ್ಟೆ ಉಬ್ಬಿರುವುದರೊಂದಿಗೆ ಉಸಿರಾಟ ತೊಂದರೆ\n\n'
              'ದೊಡ್ಡ ಅಂಡಾಶಯದ ಗಡ್ಡೆಗಳ ಆರಂಭಿಕ ಮೌಲ್ಯಮಾಪನ ಮುಖ್ಯ.',
    },
  ];

  // ---------- UI labels by language ----------
  static const Map<String, Map<String, String>> _labels = {
    'en': {
      'appBar': 'Mucinous Cystadenoma',
      'sectionHeader': 'About This Condition',
      'disclaimer':
          'This content is for educational purposes only and does not replace professional medical advice. Always consult your doctor for diagnosis and treatment.',
    },
    'kn': {
      'appBar': 'ಮ್ಯೂಸಿನಸ್ ಸಿಸ್ಟಡೆನೋಮಾ',
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
