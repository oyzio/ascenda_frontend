import 'package:ascenda_frontend/screens/challenges_screen.dart';
import 'package:ascenda_frontend/screens/macros_screen.dart';
import 'package:ascenda_frontend/screens/training_screen.dart';
import 'package:flutter/material.dart';
import 'features/auth/login_screen.dart';
import 'features/auth/register_screen.dart';
import 'features/home/home_screen.dart';
import 'screens/clubs_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const AscendaApp());
}

class AscendaApp extends StatelessWidget {
  const AscendaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ascenda',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/clubs': (context) => const ClubsScreen(),
        '/profile': (context) => ProfileScreen(),
        '/macros': (context) => MacrosScreen(),
        '/training' : (context) => TrainingScreen(),
        '/challenges' : (context) => ChallengesScreen(),
      },
    );
  }
}
