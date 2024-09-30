import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade500,
        mainAxisAlignment: MainAxisAlignment.center,

        // tabBorderRadius: ,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(icon: Icons.home, text: 'Shop'), // Fixed syntax for 'text'
          GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart'), // Fixed syntax for 'text'
        ],
      ),
    );
  }
}
