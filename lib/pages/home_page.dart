import 'package:chatspro/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:chatspro/components/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (int) {},
      ),
    );
  }
}
