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
          'Authorization': 'Basic ${base64Encode(utf8.encode(
                '${appConfig.twilioAccountSid}:${appConfig.twilioAuthToken}',
              ))}',
        },
        body: {
          'From': appConfig.twilioPhoneNumber,
          'To': mobile,
          'Body': message,
        },
      );

      return response.statusCode == 201;
    } catch (e) {
      return false;
    }
  }
}
