import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge/ui/main/bottom_nav_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Hubtel Demo',
      home: BottomNavLayout(),
    );
  }
}
