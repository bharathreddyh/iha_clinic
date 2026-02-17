import 'package:flutter/material.dart';

class HemorrhagicCystScreen extends StatelessWidget {
  const HemorrhagicCystScreen({super.key});

  static const Color _themeColor = Color(0xFFAD1457);

  static const List<Map<String, String>> _sections = [
    {
      'title': 'What is a Hemorrhagic Ovarian Cyst?',
      'body':
          'A hemorrhagic ovarian cyst is a functional cyst that forms when bleeding occurs into a follicular or corpus luteum cyst. These cysts are common in women of reproductive age and are usually a normal part of the menstrual cycle.\n\n'
              'Most hemorrhagic cysts are benign and resolve on their own within one to three menstrual cycles without treatment. The bleeding inside the cyst gives it a characteristic appearance on ultrasound.',
    },
    {
      'title': 'Causes & Risk Factors',
      'body':
          'Hemorrhagic ovarian cysts develop when a blood vessel in the wall of a cyst breaks, causing blood to fill the cyst cavity.\n\n'
              'Common risk factors include:\n'
              '• Normal ovulation — the most common cause\n'
              '• Hormonal fluctuations during the menstrual cycle\n'
              '• Use of blood thinners (anticoagulant medications)\n'
              '• Bleeding disorders\n'
              '• Hormonal stimulation during fertility treatments',
    },
    {
      'title': 'Symptoms',
      'body':
          'Many hemorrhagic cysts cause no symptoms and are found incidentally during an ultrasound. When symptoms occur, they may include:\n\n'
              '• Sudden, sharp pain on one side of the lower abdomen\n'
              '• Dull, aching pelvic pain\n'
              '• Bloating or a feeling of heaviness\n'
              '• Pain during or after intercourse\n'
              '• Irregular menstrual periods\n\n'
              'If the cyst ruptures, you may experience sudden, severe pain. Seek medical attention immediately if pain is accompanied by dizziness, fainting, or fever.',
    },
    {
      'title': 'Diagnosis',
      'body':
          'Hemorrhagic ovarian cysts are typically diagnosed using:\n\n'
              '1. Pelvic ultrasound — the primary diagnostic tool. The cyst often shows a characteristic "cobweb" or "fishnet" pattern of internal echoes due to blood clot formation.\n\n'
              '2. Doppler ultrasound — helps assess blood flow around the cyst and rule out torsion (twisting of the ovary).\n\n'
              '3. Blood tests — may include a pregnancy test and tumour markers (such as CA-125) to rule out other conditions.\n\n'
              '4. Follow-up imaging — a repeat ultrasound after 6–8 weeks is often recommended to confirm the cyst is resolving.',
    },
    {
      'title': 'Treatment Options',
      'body':
          'Treatment depends on the size of the cyst, severity of symptoms, and whether complications are present.\n\n'
              'Observation (most common):\n'
              '• Most cysts resolve on their own within 1–3 cycles\n'
              '• Your doctor may recommend a follow-up ultrasound\n\n'
              'Medications:\n'
              '• Pain relievers (NSAIDs) for symptom management\n'
              '• Hormonal contraceptives may be prescribed to prevent new cysts\n\n'
              'Surgery (rare cases):\n'
              '• Laparoscopic cystectomy if the cyst is large (>5 cm), persistent, or causing severe symptoms\n'
              '• Emergency surgery if there is ovarian torsion or significant internal bleeding',
    },
    {
      'title': 'When to See a Doctor',
      'body':
          'Contact your doctor if you experience:\n\n'
              '• Persistent pelvic pain that does not improve\n'
              '• Sudden, severe abdominal pain\n'
              '• Pain with fever or vomiting\n'
              '• Dizziness, weakness, or fainting\n'
              '• Heavy or irregular vaginal bleeding\n\n'
              'These symptoms may indicate a ruptured cyst, ovarian torsion, or other conditions that require prompt medical evaluation.',
    },
  ];

  static const List<Map<String, String>> _images = [
    {
      'label': 'Ultrasound — Typical appearance',
      'description': 'Characteristic "cobweb" pattern of a hemorrhagic cyst on transvaginal ultrasound.',
    },
    {
      'label': 'Doppler Imaging',
      'description': 'Doppler ultrasound showing peripheral blood flow around the cyst with no internal vascularity.',
    },
    {
      'label': 'Cyst Resolution',
      'description': 'Follow-up ultrasound showing near-complete resolution after 6 weeks.',
    },
    {
      'label': 'Anatomical Illustration',
      'description': 'Diagram showing a hemorrhagic cyst within the ovary with internal blood collection.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hemorrhagic Ovarian Cyst'),
        backgroundColor: _themeColor.withValues(alpha: 0.15),
        foregroundColor: _themeColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildVideoSection(context),
                _buildContentSections(context),
                _buildImageGallery(context),
                _buildDisclaimer(context),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildVideoSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.grey[900],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.play_circle_outline,
                        size: 64,
                        color: Colors.white.withValues(alpha: 0.8),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Video Coming Soon',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.9),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Hemorrhagic Ovarian Cyst — Patient Education',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.6),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Icon(Icons.videocam, size: 20, color: _themeColor),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Watch: Understanding Hemorrhagic Ovarian Cysts',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
            padding: const EdgeInsets.only(bottom: 8, left: 4),
            child: Text(
              'About This Condition',
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
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        section['body']!,
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
          }),
        ],
      ),
    );
  }

  Widget _buildImageGallery(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12, left: 4),
            child: Text(
              'Ultrasound & Illustrations',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: _themeColor,
                  ),
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth > 450;
              if (isWide) {
                return _buildImageGrid();
              } else {
                return _buildImageList();
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildImageGrid() {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: _images.map((img) {
        return SizedBox(
          width: 330,
          child: _buildImageCard(img),
        );
      }).toList(),
    );
  }

  Widget _buildImageList() {
    return Column(
      children: _images.map((img) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: _buildImageCard(img),
        );
      }).toList(),
    );
  }

  Widget _buildImageCard(Map<String, String> img) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 4 / 3,
            child: Container(
              color: Colors.grey[200],
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.image_outlined,
                      size: 48,
                      color: Colors.grey[400],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      img['label']!,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  img['label']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  img['description']!,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 13,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
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
                  'This content is for educational purposes only and does not replace professional medical advice. Always consult your doctor for diagnosis and treatment.',
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
