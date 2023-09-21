import 'package:flutter/material.dart';
import 'component/bottom_nav.dart';
import 'component/home_body.dart';
import '../component/my_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      appBar: MyAppBar(),
      body: HomeBody(),
      bottomNavigationBar: BottomNav(),
    );
  }
}
