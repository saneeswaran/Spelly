import 'package:flutter/material.dart';
import 'package:spelly/ui/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Spelly', home: const HomePage());
  }
}
