import 'dart:math';

class ChatMessage {
  final String text;
  final bool isUser;
  final DateTime timestamp;

  ChatMessage({
    required this.text,
    required this.isUser,
    DateTime? timestamp,
  }) : timestamp = timestamp ?? DateTime.now();
}

class EducationChatService {
  final String _language;
  final Random _random = Random();

  EducationChatService({String language = 'en'}) : _language = language;

  String get language => _language;

  String getGreeting() {
    if (_language == 'kn') {
      return 'ನಮಸ್ಕಾರ! ನಾನು ಪಾಟೀಲ್ ಆಸ್ಪತ್ರೆಯ ರೋಗಿ ಶಿಕ್ಷಣ ಸಹಾಯಕ. '
          'ರಕ್ತಸ್ರಾವದ ಅಂಡಾಶಯದ ಚೀಲ (ಹೆಮರಾಜಿಕ್ ಓವೇರಿಯನ್ ಸಿಸ್ಟ್) ಬಗ್ಗೆ ನಿಮಗೆ ಯಾವುದೇ ಪ್ರಶ್ನೆಗಳಿದ್ದರೆ ಕೇಳಿ.\n\n'
          'ಉದಾಹರಣೆಗೆ ನೀವು ಕೇಳಬಹುದು:\n'
          '• ಇದು ಏನು?\n'
          '• ರೋಗಲಕ್ಷಣಗಳೇನು?\n'
          '• ಚಿಕಿತ್ಸೆ ಹೇಗೆ?\n'
          '• ವೈದ್ಯರನ್ನು ಯಾವಾಗ ಭೇಟಿ ಮಾಡಬೇಕು?';
    }
    return 'Hello! I\'m the 3D Clinic patient education assistant. '
        'Ask me any questions about Hemorrhagic Ovarian Cysts.\n\n'
        'For example, you can ask:\n'
        '• What is a hemorrhagic cyst?\n'
        '• What are the symptoms?\n'
        '• How is it treated?\n'
        '• When should I see a doctor?';
  }

  String getResponse(String userMessage) {
    final msg = userMessage.toLowerCase().trim();

    // Check for Kannada or English keywords
    if (_language == 'kn') {
      return _getKannadaResponse(msg);
    }
    return _getEnglishResponse(msg);
  }

  String _getEnglishResponse(String msg) {
    // Greetings
    if (_matchesAny(msg, ['hello', 'hi', 'hey', 'good morning', 'good evening', 'namaste'])) {
      return 'Hello! How can I help you learn about hemorrhagic ovarian cysts today?';
    }

    // What is it
    if (_matchesAny(msg, ['what is', 'what are', 'define', 'meaning', 'explain what'])) {
      if (_matchesAny(msg, ['hemorrhagic', 'cyst', 'hoc'])) {
        return 'A hemorrhagic ovarian cyst is a functional cyst that forms when bleeding occurs '
            'into a follicular or corpus luteum cyst. These cysts are common in women of reproductive '
            'age and are usually a normal part of the menstrual cycle.\n\n'
            'Most hemorrhagic cysts are benign and resolve on their own within 1-3 menstrual cycles '
            'without treatment. The bleeding inside the cyst gives it a characteristic appearance on ultrasound.';
      }
      if (_matchesAny(msg, ['corpus luteum', 'follicular'])) {
        return 'A follicular cyst forms when the follicle doesn\'t rupture to release an egg, while a '
            'corpus luteum cyst forms after the egg is released and the sac seals off and fills with fluid. '
            'Both are types of functional cysts and are usually harmless.';
      }
      if (_matchesAny(msg, ['ovarian torsion', 'torsion'])) {
        return 'Ovarian torsion is when the ovary twists around the ligaments that hold it in place. '
            'This can cut off blood supply to the ovary and is a medical emergency. Large cysts can '
            'increase the risk of torsion. Symptoms include sudden severe pain, nausea, and vomiting.';
      }
      return 'Could you be more specific? I can help explain:\n'
          '• What hemorrhagic cysts are\n'
          '• Causes and risk factors\n'
          '• Symptoms\n'
          '• Diagnosis methods\n'
          '• Treatment options\n'
          '• When to see a doctor';
    }

    // Causes / risk factors
    if (_matchesAny(msg, ['cause', 'why', 'risk', 'factor', 'how does it form', 'how do they form', 'reason'])) {
      return 'Hemorrhagic ovarian cysts develop when a blood vessel in the wall of a cyst breaks, '
          'causing blood to fill the cyst cavity.\n\n'
          'Common risk factors include:\n'
          '• Normal ovulation — the most common cause\n'
          '• Hormonal fluctuations during the menstrual cycle\n'
          '• Use of blood thinners (anticoagulant medications)\n'
          '• Bleeding disorders\n'
          '• Hormonal stimulation during fertility treatments';
    }

    // Symptoms
    if (_matchesAny(msg, ['symptom', 'sign', 'feel', 'pain', 'hurt', 'ache', 'bleed', 'bleeding'])) {
      return 'Many hemorrhagic cysts cause no symptoms and are found incidentally during an ultrasound. '
          'When symptoms occur, they may include:\n\n'
          '• Sudden, sharp pain on one side of the lower abdomen\n'
          '• Dull, aching pelvic pain\n'
          '• Bloating or a feeling of heaviness\n'
          '• Pain during or after intercourse\n'
          '• Irregular menstrual periods\n\n'
          'If the cyst ruptures, you may experience sudden, severe pain. Seek medical attention '
          'immediately if pain is accompanied by dizziness, fainting, or fever.';
    }

    // Diagnosis
    if (_matchesAny(msg, ['diagnos', 'test', 'ultrasound', 'scan', 'detect', 'doppler', 'usg', 'imaging', 'blood test', 'ca-125', 'ca125'])) {
      return 'Hemorrhagic ovarian cysts are typically diagnosed using:\n\n'
          '1. Pelvic ultrasound — the primary diagnostic tool. The cyst often shows a characteristic '
          '"cobweb" or "fishnet" pattern of internal echoes.\n\n'
          '2. Doppler ultrasound — helps assess blood flow around the cyst and rule out torsion.\n\n'
          '3. Blood tests — may include a pregnancy test and tumour markers (CA-125) to rule out '
          'other conditions.\n\n'
          '4. Follow-up imaging — a repeat ultrasound after 6-8 weeks is often recommended to confirm '
          'the cyst is resolving.';
    }

    // Treatment
    if (_matchesAny(msg, ['treat', 'cure', 'medicine', 'medication', 'surgery', 'operation', 'management', 'therapy', 'heal'])) {
      return 'Treatment depends on the size, symptoms, and whether complications are present.\n\n'
          'Observation (most common):\n'
          '• Most cysts resolve on their own within 1-3 cycles\n'
          '• Your doctor may recommend a follow-up ultrasound\n\n'
          'Medications:\n'
          '• Pain relievers (NSAIDs) for symptom management\n'
          '• Hormonal contraceptives may be prescribed to prevent new cysts\n\n'
          'Surgery (rare cases):\n'
          '• Laparoscopic cystectomy if the cyst is large (>5 cm), persistent, or causing severe symptoms\n'
          '• Emergency surgery if there is ovarian torsion or significant internal bleeding';
    }

    // When to see doctor / emergency
    if (_matchesAny(msg, ['doctor', 'emergency', 'hospital', 'urgent', 'when to see', 'when should', 'serious', 'danger', 'worried', 'concern'])) {
      return 'Contact your doctor if you experience:\n\n'
          '• Persistent pelvic pain that does not improve\n'
          '• Sudden, severe abdominal pain\n'
          '• Pain with fever or vomiting\n'
          '• Dizziness, weakness, or fainting\n'
          '• Heavy or irregular vaginal bleeding\n\n'
          'These symptoms may indicate a ruptured cyst, ovarian torsion, or other conditions '
          'that require prompt medical evaluation.\n\n'
          'If you are experiencing any of these symptoms right now, please visit 3D Clinic '
          'Hospital or your nearest emergency room immediately.';
    }

    // Rupture
    if (_matchesAny(msg, ['rupture', 'burst', 'break', 'pop'])) {
      return 'When a hemorrhagic cyst ruptures, it can cause:\n\n'
          '• Sudden, intense lower abdominal pain\n'
          '• Internal bleeding into the pelvic cavity\n'
          '• Nausea and vomiting\n'
          '• Lightheadedness or fainting\n\n'
          'Most ruptured cysts resolve on their own, but significant internal bleeding may require '
          'emergency surgery. If you experience sudden severe pain, seek immediate medical attention.';
    }

    // Prevention
    if (_matchesAny(msg, ['prevent', 'avoid', 'stop', 'recur', 'come back', 'again'])) {
      return 'While functional cysts cannot be completely prevented (as they are a normal part of ovulation), '
          'the risk of new cysts can be reduced:\n\n'
          '• Hormonal contraceptives (birth control pills) can suppress ovulation and prevent new cysts\n'
          '• Regular follow-up ultrasounds help monitor existing cysts\n'
          '• Managing underlying conditions like bleeding disorders\n\n'
          'Talk to your doctor about the best approach for your situation.';
    }

    // Pregnancy related
    if (_matchesAny(msg, ['pregnant', 'pregnancy', 'fertility', 'conceive', 'baby', 'ivf'])) {
      return 'Hemorrhagic cysts generally do not affect fertility. Most resolve on their own and '
          'do not damage the ovary.\n\n'
          'Key points:\n'
          '• A cyst on one ovary usually doesn\'t prevent ovulation from the other ovary\n'
          '• Once the cyst resolves, normal ovulation typically resumes\n'
          '• Surgery, if needed, is usually ovary-preserving (cystectomy, not oophorectomy)\n'
          '• During pregnancy, corpus luteum cysts are common in the first trimester and usually resolve by the second trimester\n\n'
          'Discuss your fertility concerns with your gynaecologist for personalized advice.';
    }

    // Size related
    if (_matchesAny(msg, ['size', 'big', 'large', 'small', 'cm', 'centimeter', 'how big'])) {
      return 'Hemorrhagic cysts vary in size:\n\n'
          '• Small (<3 cm): Very common, usually resolve without treatment\n'
          '• Medium (3-5 cm): Monitored with follow-up ultrasound\n'
          '• Large (>5 cm): May cause more symptoms and may require closer monitoring or surgery\n'
          '• Very large (>10 cm): Higher risk of complications like torsion; surgery often recommended\n\n'
          'Your doctor will determine the best management based on size, symptoms, and your overall health.';
    }

    // Duration
    if (_matchesAny(msg, ['how long', 'duration', 'resolve', 'go away', 'disappear', 'time', 'weeks', 'months'])) {
      return 'Most hemorrhagic cysts resolve on their own within 1-3 menstrual cycles (roughly 4-12 weeks).\n\n'
          '• A follow-up ultrasound is typically done at 6-8 weeks to check progress\n'
          '• If the cyst persists beyond 3 cycles, further evaluation may be needed\n'
          '• Some cysts may take longer to resolve completely\n\n'
          'Patience is important — most cysts go away without any intervention.';
    }

    // Thank you
    if (_matchesAny(msg, ['thank', 'thanks', 'helpful', 'great', 'good'])) {
      final responses = [
        'You\'re welcome! Feel free to ask if you have any more questions.',
        'Glad I could help! Don\'t hesitate to ask anything else.',
        'Happy to help! Remember, always consult your doctor for personalized medical advice.',
      ];
      return responses[_random.nextInt(responses.length)];
    }

    // Default / fallback
    return 'I can help you learn about hemorrhagic ovarian cysts. Try asking about:\n\n'
        '• What is a hemorrhagic cyst?\n'
        '• What causes it?\n'
        '• What are the symptoms?\n'
        '• How is it diagnosed?\n'
        '• What are the treatment options?\n'
        '• When should I see a doctor?\n'
        '• Does it affect pregnancy?\n'
        '• How long does it take to resolve?\n\n'
        'You can also ask about cyst size, rupture, or prevention.';
  }

  String _getKannadaResponse(String msg) {
    // Greetings
    if (_matchesAny(msg, ['ನಮಸ್ಕಾರ', 'ಹಲೋ', 'ಹಾಯ್', 'hello', 'hi'])) {
      return 'ನಮಸ್ಕಾರ! ರಕ್ತಸ್ರಾವದ ಅಂಡಾಶಯದ ಚೀಲದ ಬಗ್ಗೆ ನಿಮಗೆ ಹೇಗೆ ಸಹಾಯ ಮಾಡಬಹುದು?';
    }

    // What is it
    if (_matchesAny(msg, ['ಏನು', 'ಏನಿದು', 'what', 'ಅರ್ಥ', 'ವಿವರಿಸಿ'])) {
      return 'ರಕ್ತಸ್ರಾವದ ಅಂಡಾಶಯದ ಚೀಲ (ಹೆಮರಾಜಿಕ್ ಓವೇರಿಯನ್ ಸಿಸ್ಟ್) ಎಂದರೆ ಫೋಲಿಕ್ಯುಲರ್ ಅಥವಾ ಕಾರ್ಪಸ್ '
          'ಲೂಟಿಯಂ ಚೀಲದ ಒಳಗೆ ರಕ್ತಸ್ರಾವ ಉಂಟಾದಾಗ ರೂಪುಗೊಳ್ಳುವ ಒಂದು ಕ್ರಿಯಾತ್ಮಕ ಚೀಲವಾಗಿದೆ.\n\n'
          'ಈ ಚೀಲಗಳು ಸಂತಾನೋತ್ಪತ್ತಿ ವಯಸ್ಸಿನ ಮಹಿಳೆಯರಲ್ಲಿ ಸಾಮಾನ್ಯವಾಗಿ ಕಂಡುಬರುತ್ತವೆ ಮತ್ತು ಹೆಚ್ಚಿನವು '
          'ಯಾವುದೇ ಚಿಕಿತ್ಸೆಯಿಲ್ಲದೆ ೧-೩ ಋತುಚಕ್ರಗಳಲ್ಲಿ ತಾವಾಗಿಯೇ ಕರಗಿಹೋಗುತ್ತವೆ.';
    }

    // Causes
    if (_matchesAny(msg, ['ಕಾರಣ', 'ಏಕೆ', 'ಅಪಾಯ', 'ಹೇಗೆ ಬರುತ್ತದೆ'])) {
      return 'ಚೀಲದ ಗೋಡೆಯಲ್ಲಿನ ರಕ್ತನಾಳವು ಒಡೆದಾಗ ರಕ್ತಸ್ರಾವದ ಚೀಲಗಳು ಬೆಳೆಯುತ್ತವೆ.\n\n'
          'ಸಾಮಾನ್ಯ ಅಪಾಯಕಾರಿ ಅಂಶಗಳು:\n'
          '• ಸಾಮಾನ್ಯ ಅಂಡೋತ್ಪತ್ತಿ\n'
          '• ಋತುಚಕ್ರದ ಹಾರ್ಮೋನ್ ಏರಿಳಿತಗಳು\n'
          '• ರಕ್ತ ತೆಳುಗೊಳಿಸುವ ಔಷಧಿಗಳ ಬಳಕೆ\n'
          '• ರಕ್ತಸ್ರಾವ ಸಂಬಂಧಿತ ಕಾಯಿಲೆಗಳು\n'
          '• ಫಲವತ್ತತೆ ಚಿಕಿತ್ಸೆಯ ಹಾರ್ಮೋನ್ ಉತ್ತೇಜನ';
    }

    // Symptoms
    if (_matchesAny(msg, ['ಲಕ್ಷಣ', 'ರೋಗಲಕ್ಷಣ', 'ನೋವು', 'ಹೇಗೆ ಗೊತ್ತಾಗುತ್ತದೆ', 'ಚಿಹ್ನೆ'])) {
      return 'ಅನೇಕ ಚೀಲಗಳು ಯಾವುದೇ ರೋಗಲಕ್ಷಣಗಳಿಲ್ಲದೆ ಇರುತ್ತವೆ. ಲಕ್ಷಣಗಳು ಕಂಡುಬಂದಾಗ:\n\n'
          '• ಕೆಳಹೊಟ್ಟೆಯಲ್ಲಿ ಇದ್ದಕ್ಕಿದ್ದಂತೆ ತೀವ್ರ ನೋವು\n'
          '• ಸೊಂಟದ ಮಂದ ನೋವು\n'
          '• ಉಬ್ಬುವಿಕೆ ಅಥವಾ ಭಾರ ಎನಿಸುವುದು\n'
          '• ಅನಿಯಮಿತ ಋತುಸ್ರಾವ\n\n'
          'ಚೀಲವು ಒಡೆದರೆ ತೀವ್ರ ನೋವು ಅನುಭವವಾಗಬಹುದು. ತಕ್ಷಣ ವೈದ್ಯರನ್ನು ಭೇಟಿ ಮಾಡಿ.';
    }

    // Diagnosis
    if (_matchesAny(msg, ['ಪತ್ತೆ', 'ರೋಗನಿರ್ಣಯ', 'ಅಲ್ಟ್ರಾಸೌಂಡ್', 'ಪರೀಕ್ಷೆ', 'ಸ್ಕ್ಯಾನ್', 'ಡಾಪ್ಲರ್'])) {
      return 'ರೋಗನಿರ್ಣಯ ವಿಧಾನಗಳು:\n\n'
          '೧. ಪೆಲ್ವಿಕ್ ಅಲ್ಟ್ರಾಸೌಂಡ್ — ಪ್ರಾಥಮಿಕ ಸಾಧನ\n'
          '೨. ಡಾಪ್ಲರ್ ಅಲ್ಟ್ರಾಸೌಂಡ್ — ರಕ್ತ ಪ್ರವಾಹ ಮೌಲ್ಯಮಾಪನ\n'
          '೩. ರಕ್ತ ಪರೀಕ್ಷೆಗಳು — ಗರ್ಭಧಾರಣೆ ಪರೀಕ್ಷೆ ಮತ್ತು CA-125\n'
          '೪. ೬-೮ ವಾರಗಳ ನಂತರ ಅನುಸರಣಾ ಅಲ್ಟ್ರಾಸೌಂಡ್';
    }

    // Treatment
    if (_matchesAny(msg, ['ಚಿಕಿತ್ಸೆ', 'ಔಷಧಿ', 'ಶಸ್ತ್ರಚಿಕಿತ್ಸೆ', 'ಗುಣಪಡಿಸು', 'ಹೇಗೆ ಗುಣವಾಗುತ್ತದೆ'])) {
      return 'ಚಿಕಿತ್ಸಾ ಆಯ್ಕೆಗಳು:\n\n'
          'ಅವಲೋಕನ (ಅತ್ಯಂತ ಸಾಮಾನ್ಯ):\n'
          '• ಹೆಚ್ಚಿನ ಚೀಲಗಳು ೧-೩ ಋತುಚಕ್ರಗಳಲ್ಲಿ ಕರಗುತ್ತವೆ\n\n'
          'ಔಷಧಿಗಳು:\n'
          '• ನೋವು ನಿವಾರಕಗಳು (NSAIDs)\n'
          '• ಹಾರ್ಮೋನ್ ಗರ್ಭನಿರೋಧಕಗಳು\n\n'
          'ಶಸ್ತ್ರಚಿಕಿತ್ಸೆ (ಅಪರೂಪ):\n'
          '• ದೊಡ್ಡ ಅಥವಾ ನಿರಂತರ ಚೀಲಗಳಿಗೆ ಲ್ಯಾಪರೊಸ್ಕೋಪಿಕ್ ಸಿಸ್ಟೆಕ್ಟಮಿ';
    }

    // Doctor
    if (_matchesAny(msg, ['ವೈದ್ಯ', 'ಆಸ್ಪತ್ರೆ', 'ಡಾಕ್ಟರ್', 'ತುರ್ತು', 'ಯಾವಾಗ ಭೇಟಿ'])) {
      return 'ಈ ಲಕ್ಷಣಗಳಿದ್ದರೆ ವೈದ್ಯರನ್ನು ಸಂಪರ್ಕಿಸಿ:\n\n'
          '• ಸುಧಾರಿಸದ ನಿರಂತರ ಸೊಂಟದ ನೋವು\n'
          '• ಇದ್ದಕ್ಕಿದ್ದಂತೆ ತೀವ್ರವಾದ ಹೊಟ್ಟೆ ನೋವು\n'
          '• ಜ್ವರ ಅಥವಾ ವಾಂತಿಯೊಂದಿಗೆ ನೋವು\n'
          '• ತಲೆತಿರುಗುವಿಕೆ ಅಥವಾ ಮೂರ್ಛೆ\n'
          '• ಅಧಿಕ ಅಥವಾ ಅನಿಯಮಿತ ಯೋನಿ ರಕ್ತಸ್ರಾವ\n\n'
          'ತುರ್ತು ಸಂದರ್ಭದಲ್ಲಿ ಪಾಟೀಲ್ ಮಲ್ಟಿಸ್ಪೆಷಾಲಿಟಿ ಆಸ್ಪತ್ರೆಗೆ ಭೇಟಿ ನೀಡಿ.';
    }

    // Pregnancy
    if (_matchesAny(msg, ['ಗರ್ಭ', 'ಫಲವತ್ತತೆ', 'ಮಗು', 'ಗರ್ಭಧಾರಣೆ'])) {
      return 'ರಕ್ತಸ್ರಾವದ ಚೀಲಗಳು ಸಾಮಾನ್ಯವಾಗಿ ಫಲವತ್ತತೆಗೆ ಪರಿಣಾಮ ಬೀರುವುದಿಲ್ಲ.\n\n'
          '• ಒಂದು ಅಂಡಾಶಯದ ಚೀಲವು ಇನ್ನೊಂದರ ಅಂಡೋತ್ಪತ್ತಿಯನ್ನು ತಡೆಯುವುದಿಲ್ಲ\n'
          '• ಚೀಲ ಕರಗಿದ ನಂತರ ಸಾಮಾನ್ಯ ಅಂಡೋತ್ಪತ್ತಿ ಪುನರಾರಂಭವಾಗುತ್ತದೆ\n'
          '• ನಿಮ್ಮ ಸ್ತ್ರೀರೋಗ ತಜ್ಞರೊಂದಿಗೆ ಚರ್ಚಿಸಿ';
    }

    // Thank you
    if (_matchesAny(msg, ['ಧನ್ಯವಾದ', 'ಥ್ಯಾಂಕ್ಸ್', 'ಒಳ್ಳೆಯದು'])) {
      return 'ನಿಮಗೆ ಸಹಾಯ ಮಾಡಲು ಸಂತೋಷ! ಇನ್ನೂ ಪ್ರಶ್ನೆಗಳಿದ್ದರೆ ಕೇಳಿ. '
          'ವೈಯಕ್ತಿಕ ವೈದ್ಯಕೀಯ ಸಲಹೆಗಾಗಿ ಯಾವಾಗಲೂ ನಿಮ್ಮ ವೈದ್ಯರನ್ನು ಸಂಪರ್ಕಿಸಿ.';
    }

    // Default
    return 'ನಾನು ರಕ್ತಸ್ರಾವದ ಅಂಡಾಶಯದ ಚೀಲದ ಬಗ್ಗೆ ಸಹಾಯ ಮಾಡಬಲ್ಲೆ. ಈ ವಿಷಯಗಳ ಬಗ್ಗೆ ಕೇಳಿ:\n\n'
        '• ಇದು ಏನು?\n'
        '• ಕಾರಣಗಳೇನು?\n'
        '• ರೋಗಲಕ್ಷಣಗಳೇನು?\n'
        '• ರೋಗನಿರ್ಣಯ ಹೇಗೆ?\n'
        '• ಚಿಕಿತ್ಸೆ ಏನು?\n'
        '• ವೈದ್ಯರನ್ನು ಯಾವಾಗ ಭೇಟಿ ಮಾಡಬೇಕು?';
  }

  bool _matchesAny(String text, List<String> keywords) {
    return keywords.any((keyword) => text.contains(keyword));
  }
}
