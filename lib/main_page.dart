import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pulsa_login/pages/account.dart';
import 'package:pulsa_login/pages/history.dart';
import 'package:pulsa_login/pages/home_page.dart';
import 'package:pulsa_login/pages/client_data.dart';

class main_page extends StatefulWidget {
  const main_page({super.key});

  @override
  State<main_page> createState() => _main_pageState();
}

class myColors {
  static const backgroundColor1 = LinearGradient(
    colors: [Colors.pink, Colors.purple],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

class _main_pageState extends State<main_page> {
  int _selectedIndex = 0;

  void _NavigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    home_page(),
    history(),
    client_data(),
    account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color(0xFF273690), // Set the background color of the Scaffold
      body: _pages[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        // Use ClipRRect to clip the circular border
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.pink, Colors.purple])),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: GNav(
              tabBackgroundGradient: myColors.backgroundColor1,
              color: Color(0xFFfffffe),
              activeColor: const Color(0xFFfffffe),
              tabBackgroundColor: Color(0xFFfbdd74),
              gap: 10,
              onTabChange: _NavigateBottomBar,
              padding: EdgeInsets.all(18),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Home Page",
                ),
                GButton(icon: Icons.history, text: "Top up History"),
                GButton(icon: Icons.search, text: "Client Data"),
                GButton(icon: Icons.account_box, text: "Account"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
