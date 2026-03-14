import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'core/config/app_config.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/education_modules_screen.dart';
import 'apps/reception_app/screens/mobile_entry_screen.dart';
import 'apps/patient_app/screens/landing_screen.dart';
import 'apps/patient_app/screens/modules_list_screen.dart';
import 'apps/patient_app/screens/hemorrhagic_cyst_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  appConfig = AppConfig.production();
  runApp(const PatientEducationApp());
}

class PatientEducationApp extends StatelessWidget {
  const PatientEducationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appConfig.clinicName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) {
        final uri = Uri.parse(settings.name ?? '/');

        // Patient access link: /p/{token}
        if (uri.pathSegments.length == 2 && uri.pathSegments[0] == 'p') {
          final token = uri.pathSegments[1];
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => ModulesListScreen(token: token),
          );
        }

        // Clinic: Patient registration
        if (uri.path == '/clinic') {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => const MobileEntryScreen(),
          );
        }

        // Education modules listing
        if (uri.path == '/education') {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => const EducationModulesScreen(),
          );
        }

        // Sample module: Hemorrhagic Ovarian Cyst
        if (uri.path == '/hemorrhagic-cyst') {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => const HemorrhagicCystScreen(),
          );
        }

        // Home page with Clinics & Education links
        if (uri.path == '/home') {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => const HomeScreen(),
          );
        }

        // Patient landing (lost SMS fallback)
        if (uri.path == '/patient') {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => const LandingScreen(),
          );
        }

        // Default: Login screen
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const LoginScreen(),
        );
      },
    );
  }
}
