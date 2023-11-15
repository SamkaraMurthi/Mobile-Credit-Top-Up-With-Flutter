import 'package:flutter/material.dart';
import 'package:pulsa_login/main_page.dart' as colors;

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.12,
          decoration: BoxDecoration(
            gradient: myColors.backgroundColor1,
          ),
        )
      ],
    ));
  }
}

class myColors {
  static const backgroundColor1 = LinearGradient(
    colors: [Colors.pink, Colors.purple],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
