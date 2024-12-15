import 'package:flutter/material.dart';
import 'package:lab/custom_button_tray.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      home: Scaffold(
        backgroundColor: Colors.black,
        body: CustomButtonTray(),
      ),
    );
  }
}
