import 'dart:html' as html;
import 'dart:ui_web' as ui_web;

import 'package:flutter/material.dart';

class HemorrhagicCystScreen extends StatefulWidget {
  const HemorrhagicCystScreen({super.key});

  @override
  State<HemorrhagicCystScreen> createState() => _HemorrhagicCystScreenState();
}

class _HemorrhagicCystScreenState extends State<HemorrhagicCystScreen> {
  static const Color _themeColor = Color(0xFFAD1457);
  static const String _youtubeVideoId = '85V0ooc8Mfs';
  static const String _viewType = 'youtube-player-hemorrhagic';
  static bool _viewFactoryRegistered = false;

  String _language = 'en'; // 'en' or 'kn'

  @override
  void initState() {
    super.initState();
    if (!_viewFactoryRegistered) {
      ui_web.platformViewRegistry.registerViewFactory(
        _viewType,
        (int viewId) {
          return html.IFrameElement()
            ..src = 'https://www.youtube.com/embed/$_youtubeVideoId'
            ..style.border = 'none'
            ..style.width = '100%'
            ..style.height = '100%'
            ..allow =
                'accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture'
            ..allowFullscreen = true;
        },
      );
      _viewFactoryRegistered = true;
    }
  }

  // ---------- English content ----------
  static const List<Map<String, String>> _sectionsEn = [
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

  // ---------- Kannada content ----------
  static const List<Map<String, String>> _sectionsKn = [
    {
      'title': 'ರಕ್ತಸ್ರಾವದ ಅಂಡಾಶಯದ ಚೀಲ (ಸಿಸ್ಟ್) ಎಂದರೇನು?',
      'body':
          'ರಕ್ತಸ್ರಾವದ ಅಂಡಾಶಯದ ಚೀಲ (ಹೆಮರಾಜಿಕ್ ಓವೇರಿಯನ್ ಸಿಸ್ಟ್) ಎಂದರೆ ಫೋಲಿಕ್ಯುಲರ್ ಅಥವಾ ಕಾರ್ಪಸ್ ಲೂಟಿಯಂ ಚೀಲದ ಒಳಗೆ ರಕ್ತಸ್ರಾವ ಉಂಟಾದಾಗ ರೂಪುಗೊಳ್ಳುವ ಒಂದು ಕ್ರಿಯಾತ್ಮಕ ಚೀಲವಾಗಿದೆ. ಈ ಚೀಲಗಳು ಸಂತಾನೋತ್ಪತ್ತಿ ವಯಸ್ಸಿನ ಮಹಿಳೆಯರಲ್ಲಿ ಸಾಮಾನ್ಯವಾಗಿ ಕಂಡುಬರುತ್ತವೆ ಮತ್ತು ಇವು ಋತುಚಕ್ರದ ಸಾಮಾನ್ಯ ಭಾಗವಾಗಿರುತ್ತವೆ.\n\n'
              'ಹೆಚ್ಚಿನ ರಕ್ತಸ್ರಾವದ ಚೀಲಗಳು ಹಾನಿಕರವಲ್ಲ ಮತ್ತು ಯಾವುದೇ ಚಿಕಿತ್ಸೆಯಿಲ್ಲದೆ ಒಂದರಿಂದ ಮೂರು ಋತುಚಕ್ರಗಳ ಒಳಗೆ ತಾವಾಗಿಯೇ ಕರಗಿಹೋಗುತ್ತವೆ. ಚೀಲದ ಒಳಗಿನ ರಕ್ತಸ್ರಾವದಿಂದ ಅಲ್ಟ್ರಾಸೌಂಡ್‌ನಲ್ಲಿ ವಿಶಿಷ್ಟವಾದ ಚಿತ್ರಣ ಕಂಡುಬರುತ್ತದೆ.',
    },
    {
      'title': 'ಕಾರಣಗಳು ಮತ್ತು ಅಪಾಯಕಾರಿ ಅಂಶಗಳು',
      'body':
          'ಚೀಲದ ಗೋಡೆಯಲ್ಲಿನ ರಕ್ತನಾಳವು ಒಡೆದಾಗ ಮತ್ತು ಚೀಲದ ಕುಳಿಯಲ್ಲಿ ರಕ್ತವು ತುಂಬಿಕೊಂಡಾಗ ರಕ್ತಸ್ರಾವದ ಅಂಡಾಶಯದ ಚೀಲಗಳು ಬೆಳೆಯುತ್ತವೆ.\n\n'
              'ಸಾಮಾನ್ಯ ಅಪಾಯಕಾರಿ ಅಂಶಗಳು:\n'
              '• ಸಾಮಾನ್ಯ ಅಂಡೋತ್ಪತ್ತಿ — ಅತ್ಯಂತ ಸಾಮಾನ್ಯ ಕಾರಣ\n'
              '• ಋತುಚಕ್ರದ ಸಮಯದಲ್ಲಿ ಹಾರ್ಮೋನ್ ಏರಿಳಿತಗಳು\n'
              '• ರಕ್ತ ತೆಳುಗೊಳಿಸುವ ಔಷಧಿಗಳ (ಆ್ಯಂಟಿಕೊಯಾಗ್ಯುಲೆಂಟ್) ಬಳಕೆ\n'
              '• ರಕ್ತಸ್ರಾವ ಸಂಬಂಧಿತ ಕಾಯಿಲೆಗಳು\n'
              '• ಫಲವತ್ತತೆ ಚಿಕಿತ್ಸೆಯ ಸಮಯದಲ್ಲಿ ಹಾರ್ಮೋನ್ ಉತ್ತೇಜನ',
    },
    {
      'title': 'ರೋಗಲಕ್ಷಣಗಳು',
      'body':
          'ಅನೇಕ ರಕ್ತಸ್ರಾವದ ಚೀಲಗಳು ಯಾವುದೇ ರೋಗಲಕ್ಷಣಗಳನ್ನು ಉಂಟುಮಾಡುವುದಿಲ್ಲ ಮತ್ತು ಅಲ್ಟ್ರಾಸೌಂಡ್ ಪರೀಕ್ಷೆಯ ಸಮಯದಲ್ಲಿ ಆಕಸ್ಮಿಕವಾಗಿ ಕಂಡುಬರುತ್ತವೆ. ರೋಗಲಕ್ಷಣಗಳು ಕಂಡುಬಂದಾಗ, ಅವು ಈ ಕೆಳಗಿನವನ್ನು ಒಳಗೊಂಡಿರಬಹುದು:\n\n'
              '• ಕೆಳಹೊಟ್ಟೆಯ ಒಂದು ಬದಿಯಲ್ಲಿ ಇದ್ದಕ್ಕಿದ್ದಂತೆ ತೀವ್ರ ನೋವು\n'
              '• ಸೊಂಟದ ಭಾಗದಲ್ಲಿ ಮಂದ ನೋವು\n'
              '• ಉಬ್ಬುವಿಕೆ ಅಥವಾ ಭಾರ ಎನಿಸುವುದು\n'
              '• ಲೈಂಗಿಕ ಸಂಪರ್ಕದ ಸಮಯದಲ್ಲಿ ಅಥವಾ ನಂತರ ನೋವು\n'
              '• ಅನಿಯಮಿತ ಋತುಸ್ರಾವ\n\n'
              'ಚೀಲವು ಒಡೆದರೆ, ಇದ್ದಕ್ಕಿದ್ದಂತೆ ತೀವ್ರ ನೋವು ಅನುಭವವಾಗಬಹುದು. ನೋವಿನೊಂದಿಗೆ ತಲೆತಿರುಗುವಿಕೆ, ಮೂರ್ಛೆ, ಅಥವಾ ಜ್ವರ ಕಂಡುಬಂದರೆ ತಕ್ಷಣ ವೈದ್ಯಕೀಯ ಸಹಾಯ ಪಡೆಯಿರಿ.',
    },
    {
      'title': 'ರೋಗನಿರ್ಣಯ',
      'body':
          'ರಕ್ತಸ್ರಾವದ ಅಂಡಾಶಯದ ಚೀಲಗಳನ್ನು ಸಾಮಾನ್ಯವಾಗಿ ಈ ಕೆಳಗಿನ ವಿಧಾನಗಳಿಂದ ಪತ್ತೆ ಮಾಡಲಾಗುತ್ತದೆ:\n\n'
              '೧. ಪೆಲ್ವಿಕ್ ಅಲ್ಟ್ರಾಸೌಂಡ್ — ಪ್ರಾಥಮಿಕ ರೋಗನಿರ್ಣಯ ಸಾಧನ. ರಕ್ತ ಹೆಪ್ಪುಗಟ್ಟುವಿಕೆಯಿಂದ ಚೀಲದಲ್ಲಿ ವಿಶಿಷ್ಟವಾದ "ಜೇಡರ ಬಲೆ" ಅಥವಾ "ಮೀನಿನ ಬಲೆ" ಮಾದರಿಯ ಆಂತರಿಕ ಪ್ರತಿಧ್ವನಿಗಳು ಕಂಡುಬರುತ್ತವೆ.\n\n'
              '೨. ಡಾಪ್ಲರ್ ಅಲ್ಟ್ರಾಸೌಂಡ್ — ಚೀಲದ ಸುತ್ತಲಿನ ರಕ್ತ ಪ್ರವಾಹವನ್ನು ಮೌಲ್ಯಮಾಪನ ಮಾಡಲು ಮತ್ತು ಅಂಡಾಶಯದ ತಿರುಚುವಿಕೆಯನ್ನು (ಟಾರ್ಶನ್) ತಳ್ಳಿಹಾಕಲು ಸಹಾಯ ಮಾಡುತ್ತದೆ.\n\n'
              '೩. ರಕ್ತ ಪರೀಕ್ಷೆಗಳು — ಗರ್ಭಧಾರಣೆ ಪರೀಕ್ಷೆ ಮತ್ತು ಗೆಡ್ಡೆಯ ಮಾರ್ಕರ್‌ಗಳನ್ನು (CA-125 ನಂತಹ) ಇತರ ಪರಿಸ್ಥಿತಿಗಳನ್ನು ತಳ್ಳಿಹಾಕಲು ಒಳಗೊಂಡಿರಬಹುದು.\n\n'
              '೪. ಅನುಸರಣಾ ಚಿತ್ರಣ — ಚೀಲವು ಕರಗುತ್ತಿದೆ ಎಂದು ಖಚಿತಪಡಿಸಲು ೬–೮ ವಾರಗಳ ನಂತರ ಪುನಃ ಅಲ್ಟ್ರಾಸೌಂಡ್ ಮಾಡಲು ಸಾಮಾನ್ಯವಾಗಿ ಶಿಫಾರಸು ಮಾಡಲಾಗುತ್ತದೆ.',
    },
    {
      'title': 'ಚಿಕಿತ್ಸಾ ಆಯ್ಕೆಗಳು',
      'body':
          'ಚಿಕಿತ್ಸೆಯು ಚೀಲದ ಗಾತ್ರ, ರೋಗಲಕ್ಷಣಗಳ ತೀವ್ರತೆ, ಮತ್ತು ತೊಡಕುಗಳು ಇವೆಯೇ ಎಂಬುದರ ಮೇಲೆ ಅವಲಂಬಿತವಾಗಿರುತ್ತದೆ.\n\n'
              'ಅವಲೋಕನ (ಅತ್ಯಂತ ಸಾಮಾನ್ಯ):\n'
              '• ಹೆಚ್ಚಿನ ಚೀಲಗಳು ೧–೩ ಋತುಚಕ್ರಗಳಲ್ಲಿ ತಾವಾಗಿಯೇ ಕರಗುತ್ತವೆ\n'
              '• ನಿಮ್ಮ ವೈದ್ಯರು ಅನುಸರಣಾ ಅಲ್ಟ್ರಾಸೌಂಡ್ ಶಿಫಾರಸು ಮಾಡಬಹುದು\n\n'
              'ಔಷಧಿಗಳು:\n'
              '• ನೋವು ನಿವಾರಕಗಳು (NSAIDs) — ರೋಗಲಕ್ಷಣ ನಿರ್ವಹಣೆಗಾಗಿ\n'
              '• ಹೊಸ ಚೀಲಗಳ ರಚನೆಯನ್ನು ತಡೆಯಲು ಹಾರ್ಮೋನ್ ಗರ್ಭನಿರೋಧಕಗಳನ್ನು ಶಿಫಾರಸು ಮಾಡಬಹುದು\n\n'
              'ಶಸ್ತ್ರಚಿಕಿತ್ಸೆ (ಅಪರೂಪದ ಸಂದರ್ಭಗಳು):\n'
              '• ಚೀಲವು ದೊಡ್ಡದಾಗಿದ್ದರೆ (>೫ ಸೆಂ.ಮೀ.), ನಿರಂತರವಾಗಿದ್ದರೆ ಅಥವಾ ತೀವ್ರ ರೋಗಲಕ್ಷಣಗಳನ್ನು ಉಂಟುಮಾಡುತ್ತಿದ್ದರೆ ಲ್ಯಾಪರೊಸ್ಕೋಪಿಕ್ ಸಿಸ್ಟೆಕ್ಟಮಿ\n'
              '• ಅಂಡಾಶಯದ ತಿರುಚುವಿಕೆ ಅಥವಾ ಗಮನಾರ್ಹ ಆಂತರಿಕ ರಕ್ತಸ್ರಾವ ಇದ್ದರೆ ತುರ್ತು ಶಸ್ತ್ರಚಿಕಿತ್ಸೆ',
    },
    {
      'title': 'ವೈದ್ಯರನ್ನು ಯಾವಾಗ ಭೇಟಿ ಮಾಡಬೇಕು?',
      'body':
          'ಈ ಕೆಳಗಿನ ಲಕ್ಷಣಗಳು ಕಂಡುಬಂದರೆ ನಿಮ್ಮ ವೈದ್ಯರನ್ನು ಸಂಪರ್ಕಿಸಿ:\n\n'
              '• ಸುಧಾರಿಸದ ನಿರಂತರ ಸೊಂಟದ ನೋವು\n'
              '• ಇದ್ದಕ್ಕಿದ್ದಂತೆ ತೀವ್ರವಾದ ಹೊಟ್ಟೆ ನೋವು\n'
              '• ಜ್ವರ ಅಥವಾ ವಾಂತಿಯೊಂದಿಗೆ ನೋವು\n'
              '• ತಲೆತಿರುಗುವಿಕೆ, ದೌರ್ಬಲ್ಯ, ಅಥವಾ ಮೂರ್ಛೆ\n'
              '• ಅಧಿಕ ಅಥವಾ ಅನಿಯಮಿತ ಯೋನಿ ರಕ್ತಸ್ರಾವ\n\n'
              'ಈ ರೋಗಲಕ್ಷಣಗಳು ಚೀಲ ಒಡೆಯುವಿಕೆ, ಅಂಡಾಶಯದ ತಿರುಚುವಿಕೆ, ಅಥವಾ ತಕ್ಷಣದ ವೈದ್ಯಕೀಯ ಮೌಲ್ಯಮಾಪನ ಅಗತ್ಯವಿರುವ ಇತರ ಪರಿಸ್ಥಿತಿಗಳನ್ನು ಸೂಚಿಸಬಹುದು.',
    },
  ];

  // ---------- UI labels by language ----------
  static const Map<String, Map<String, String>> _labels = {
    'en': {
      'appBar': 'Hemorrhagic Ovarian Cyst',
      'videoCaption': 'Watch: Understanding Hemorrhagic Ovarian Cysts',
      'sectionHeader': 'About This Condition',
      'imageHeader': 'Ultrasound & Illustrations',
      'disclaimer':
          'This content is for educational purposes only and does not replace professional medical advice. Always consult your doctor for diagnosis and treatment.',
    },
    'kn': {
      'appBar': 'ರಕ್ತಸ್ರಾವದ ಅಂಡಾಶಯದ ಚೀಲ',
      'videoCaption':
          'ನೋಡಿ: ರಕ್ತಸ್ರಾವದ ಅಂಡಾಶಯದ ಚೀಲಗಳನ್ನು ಅರ್ಥಮಾಡಿಕೊಳ್ಳುವುದು',
      'sectionHeader': 'ಈ ಸ್ಥಿತಿಯ ಬಗ್ಗೆ',
      'imageHeader': 'ಅಲ್ಟ್ರಾಸೌಂಡ್ ಮತ್ತು ಚಿತ್ರಣಗಳು',
      'disclaimer':
          'ಈ ಮಾಹಿತಿಯು ಕೇವಲ ಶೈಕ್ಷಣಿಕ ಉದ್ದೇಶಗಳಿಗಾಗಿ ಮಾತ್ರ ಮತ್ತು ವೃತ್ತಿಪರ ವೈದ್ಯಕೀಯ ಸಲಹೆಯನ್ನು ಬದಲಿಸುವುದಿಲ್ಲ. ರೋಗನಿರ್ಣಯ ಮತ್ತು ಚಿಕಿತ್ಸೆಗಾಗಿ ಯಾವಾಗಲೂ ನಿಮ್ಮ ವೈದ್ಯರನ್ನು ಸಂಪರ್ಕಿಸಿ.',
    },
  };

  // ---------- Image labels by language ----------
  static const Map<String, List<Map<String, String>>> _imagesByLang = {
    'en': [
      {
        'asset': 'assets/images/hemorrhagic_cyst/ultrasound.jpg',
        'label': 'Ultrasound — Typical appearance',
        'description':
            'Characteristic "cobweb" pattern of a hemorrhagic cyst on transvaginal ultrasound.',
      },
      {
        'asset': 'assets/images/hemorrhagic_cyst/doppler.jpg',
        'label': 'Doppler Imaging',
        'description':
            'Doppler ultrasound showing peripheral blood flow around the cyst with no internal vascularity.',
      },
      {
        'asset': 'assets/images/hemorrhagic_cyst/illustration.jpg',
        'label': 'Anatomical Illustration',
        'description':
            'Diagram showing a hemorrhagic cyst within the ovary with internal blood collection.',
      },
    ],
    'kn': [
      {
        'asset': 'assets/images/hemorrhagic_cyst/ultrasound.jpg',
        'label': 'ಅಲ್ಟ್ರಾಸೌಂಡ್ — ಸಾಮಾನ್ಯ ಚಿತ್ರಣ',
        'description':
            'ಟ್ರಾನ್ಸ್‌ವ್ಯಾಜಿನಲ್ ಅಲ್ಟ್ರಾಸೌಂಡ್‌ನಲ್ಲಿ ರಕ್ತಸ್ರಾವದ ಚೀಲದ ವಿಶಿಷ್ಟ "ಜೇಡರ ಬಲೆ" ಮಾದರಿ.',
      },
      {
        'asset': 'assets/images/hemorrhagic_cyst/doppler.jpg',
        'label': 'ಡಾಪ್ಲರ್ ಚಿತ್ರಣ',
        'description':
            'ಚೀಲದ ಸುತ್ತ ಬಾಹ್ಯ ರಕ್ತ ಪ್ರವಾಹವನ್ನು ತೋರಿಸುವ ಮತ್ತು ಆಂತರಿಕ ರಕ್ತನಾಳಗಳಿಲ್ಲದ ಡಾಪ್ಲರ್ ಅಲ್ಟ್ರಾಸೌಂಡ್.',
      },
      {
        'asset': 'assets/images/hemorrhagic_cyst/illustration.jpg',
        'label': 'ಅಂಗರಚನಾ ಚಿತ್ರಣ',
        'description':
            'ಆಂತರಿಕ ರಕ್ತ ಸಂಗ್ರಹದೊಂದಿಗೆ ಅಂಡಾಶಯದ ಒಳಗಿನ ರಕ್ತಸ್ರಾವದ ಚೀಲವನ್ನು ತೋರಿಸುವ ರೇಖಾಚಿತ್ರ.',
      },
    ],
  };

  List<Map<String, String>> get _sections =>
      _language == 'kn' ? _sectionsKn : _sectionsEn;

  List<Map<String, String>> get _images =>
      _imagesByLang[_language] ?? _imagesByLang['en']!;

  String _label(String key) => _labels[_language]?[key] ?? _labels['en']![key]!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_label('appBar')),
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
            const AspectRatio(
              aspectRatio: 16 / 9,
              child: HtmlElementView(viewType: _viewType),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Icon(Icons.videocam, size: 20, color: _themeColor),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      _label('videoCaption'),
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
              _label('imageHeader'),
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
            child: Image.asset(
              img['asset']!,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
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
                );
              },
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
