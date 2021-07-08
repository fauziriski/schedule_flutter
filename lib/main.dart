import 'package:flutter/material.dart';
// import 'package:schedule_app/ui/get_started.dart';
import 'package:schedule_app/ui/splash.dart';
// import 'package:schedule_app/ui/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
    );
  }
}
