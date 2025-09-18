import 'package:flutter/material.dart';
import 'package:test/pages/admin_panal/booking_admin.dart';
import 'package:test/pages/home.dart';
import 'package:test/pages/onbording.dart';  // Corrected spelling
import 'package:test/pages/signup.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Home(),  // Start with the Onboarding page
    );
  }
}
