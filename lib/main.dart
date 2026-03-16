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
import 'apps/patient_app/screens/simple_cyst_screen.dart';
import 'apps/patient_app/screens/polycystic_ovaries_screen.dart';
import 'apps/patient_app/screens/endometrioma_screen.dart';
import 'apps/patient_app/screens/dermoid_cyst_screen.dart';
import 'apps/patient_app/screens/serous_cystadenoma_screen.dart';
import 'apps/patient_app/screens/mucinous_cystadenoma_screen.dart';
import 'apps/patient_app/screens/ovarian_fibroma_screen.dart';
import 'apps/patient_app/screens/coming_soon_screen.dart';
import 'apps/patient_app/screens/education_detail_screen.dart';

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

        // Simple Ovarian Cyst
        if (uri.path == '/simple-cyst') {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => const SimpleCystScreen(),
          );
        }

        // Polycystic Ovaries
        if (uri.path == '/polycystic-ovaries') {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => const PolycysticOvariesScreen(),
          );
        }

        // Endometrioma
        if (uri.path == '/endometrioma') {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => const EndometriomaScreen(),
          );
        }

        // Dermoid Cyst
        if (uri.path == '/dermoid-cyst') {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => const DermoidCystScreen(),
          );
        }

        // Serous Cystadenoma
        if (uri.path == '/serous-cystadenoma') {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => const SerousCystadenomaScreen(),
          );
        }

        // Mucinous Cystadenoma
        if (uri.path == '/mucinous-cystadenoma') {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => const MucinousCystadenomaScreen(),
          );
        }

        // Ovarian Fibroma
        if (uri.path == '/ovarian-fibroma') {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => const OvarianFibromaScreen(),
          );
        }

        // Generic education detail screen: /edu/{topicId}
        if (uri.pathSegments.length == 2 && uri.pathSegments[0] == 'edu') {
          final topicId = uri.pathSegments[1];
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => EducationDetailScreen(topicId: topicId),
          );
        }

        // Coming Soon (placeholder for modules under development)
        if (uri.path == '/coming-soon') {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => const ComingSoonScreen(),
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
