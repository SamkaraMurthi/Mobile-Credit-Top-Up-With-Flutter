import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(
            top: 50,
          )),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
                gradient: myColors.backgroundColor1,
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 18)),
                Container(
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 30)),
                      Icon(Icons.account_box_rounded),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        "Welcome, ",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "User",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Spacer(
                        flex: 5,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(children: [
                    Container(), // account ammount
                    Container(), //account topup
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
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
