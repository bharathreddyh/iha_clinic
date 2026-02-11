import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/app_config.dart';

class SmsService {
  Future<bool> sendAccessLink({
    required String mobile,
    required String token,
  }) async {
    final link = '${appConfig.baseUrl}/p/$token';

    final message = '''
Welcome to ${appConfig.clinicName}!

Access your health education:
$link

Valid for 48 hours.

Lost link? Visit ${appConfig.baseUrl}
''';

    try {
      final response = await http.post(
        Uri.parse(
          'https://api.twilio.com/2010-04-01/Accounts/${appConfig.twilioAccountSid}/Messages.json',
        ),
        headers: {
          'Authorization': 'Basic ' +
              base64Encode(utf8.encode(
                  '${appConfig.twilioAccountSid}:${appConfig.twilioAuthToken}')),
        },
        body: {
          'From': appConfig.twilioPhoneNumber,
          'To': mobile,
          'Body': message,
        },
      );

      print('SMS Response: ${response.statusCode}');
      print('SMS Body: ${response.body}');

      return response.statusCode == 201;
    } catch (e) {
      print('SMS Error: $e');
      return false;
    }
  }
}
```

---

## **Verify Your File Structure**

After creating all files, your structure should look like:
```
lib/
├── main.dart
├── firebase_options.dart
├── core/
│   ├── config/
│   │   └── app_config.dart          ✅ Created
│   ├── models/
│   │   ├── registration.dart        ✅ Created
│   │   └── module.dart              ✅ Created
│   └── services/
│       ├── database_service.dart    ✅ Created
│       └── sms_service.dart         ✅ Created
└── apps/
├── reception_app/
│   ├── screens/                 (Next step)
│   └── widgets/
└── patient_app/
├── screens/                 (Next step)
└── widgets/