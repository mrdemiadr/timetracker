import 'package:flutter/material.dart';
import 'package:timetracker/app/landing_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:timetracker/services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Time Tracker',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: LandingPage(
        auth: Auth(),
      ),
    );
  }
}
