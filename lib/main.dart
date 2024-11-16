import 'package:flutter/material.dart';
import 'package:soccer_app/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Soccer App',
      debugShowCheckedModeBanner: false,
      home: AppMainScreen(),
    );
  }
}
