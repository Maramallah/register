import 'package:flutter/material.dart';
import 'package:test1/screens/login.dart';



void main() {
  runApp(const Start());
}
class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      
    );
  }
}


