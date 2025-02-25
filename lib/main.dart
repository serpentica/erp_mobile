import 'package:dart/screen/adresse_screen.dart';
import 'package:dart/screen/forgot_passowrd_screen.dart';
import 'package:dart/screen/login_screen.dart';
import 'package:dart/screen/profile_screen.dart';
import 'package:dart/screen/registration_screen.dart';
import 'package:dart/screen/reset_password_screen.dart';
import 'package:dart/screen/update_passowrd.dart';
import 'package:dart/screen/verify_email_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegistrationScreen(),
        '/verify-email': (context) => const  VerifyEmailScreen(),
        '/forgot-password': (context) => const ForgotPasswordScreen(),
        '/reset-password': (context) => const ResetPasswordScreen(),
        '/update-password': (context) => const UpdatePasswordScreen(),
        '/addresses': (context) => const AddressesScreen(),
        '/profile': (context) => const ProfileScreen(),



      },
    );
  }
}
