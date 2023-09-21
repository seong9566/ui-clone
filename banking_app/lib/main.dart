import 'package:flutter/material.dart';

import 'screen/home_screen/home_screen.dart';

void main() {
  runApp(const BankingApp());
}

//Padding = 16
class BankingApp extends StatelessWidget {
  const BankingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
