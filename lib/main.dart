import 'package:flutter/material.dart';
import 'package:responsive_settings_screen/responsive_settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: ResposiveSettingsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}