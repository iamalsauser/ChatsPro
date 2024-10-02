import 'package:chatspro/components/bottom_nav_bar.dart';
import 'package:chatspro/pages/cart_papge.dart';
import 'package:chatspro/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:chatspro/components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

// this method will update our selected index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    const ShopPage(),

    // cart page
    CartPapge(),
  ];

  // shop page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu)))),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 26, 26, 26),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100.0),
              child:
                  // DrawerHeader(
                  Image.asset(
                'lib/images/logo.png',
                color: Colors.white, // Apply color filter to image only
                width: 150,
                height: 100,
              ),
            ),
            SizedBox(height: 20.0),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 70.0), // Add padding around the divider
              child: Divider(
                color: Colors.grey[
                    800], // Set the desired color for the divider (e.g., white or grey)
                thickness: 1.0, // Customize thickness if needed
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 25.0), // Set left padding for all ListTiles
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text('Home', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    leading: Icon(Icons.info, color: Colors.white),
                    title: Text('Info', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.white),
                    title:
                        Text('Logout', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            )

            // Add more ListTile widgets as needed
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
