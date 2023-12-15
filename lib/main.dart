import 'package:firebase_auth/firebase_auth.dart';
import 'package:project1/authentication/screens/login_screen/login_screen.dart';
import 'package:project1/core/themes.dart';
import 'package:project1/homePage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'authentication/screens/register_screen/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
//await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        theme: Style.lightTheme,
        themeMode: ThemeMode.light,
        routes: {
          "signup": (context) => const RegisterScreen(),
          "login": (context) => const LoginScreen(),
          "homepage": (context) => const HomePage()
        },
      ),
    );
  }
}
