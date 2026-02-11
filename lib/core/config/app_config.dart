class AppConfig {
  final String baseUrl;
  final String clinicName;
  final String twilioAccountSid;
  final String twilioAuthToken;
  final String twilioPhoneNumber;

  AppConfig({
    required this.baseUrl,
    required this.clinicName,
    required this.twilioAccountSid,
    required this.twilioAuthToken,
    required this.twilioPhoneNumber,
  });

  factory AppConfig.production() {
    return AppConfig(
      baseUrl: 'https://your-domain.com',
      clinicName: 'Your Clinic Name',
      twilioAccountSid: 'YOUR_TWILIO_SID',
      twilioAuthToken: 'YOUR_TWILIO_TOKEN',
      twilioPhoneNumber: '+91XXXXXXXXXX',
    );
  }
}

late AppConfig appConfig;