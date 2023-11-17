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
        color: Color(0xFF273690),
        child: Center(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                top: 50,
              )),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.8,
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
                          Icon(Icons.account_box),
                          Spacer(
                            flex: 1,
                          ),
                          Text(
                            "Welcome, ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "User",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(
                            flex: 5,
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Container(
                          child: Text(
                            "Account Balance : \n\n Rp 10000",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 50)),

                        GestureDetector(
                          child: Center(
                            child: Container(
                              width: 80,
                              height: 50,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomRight,
                                      end: Alignment.topLeft,
                                      colors: [Colors.pink, Colors.purple]),
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  "TOP UP +",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            //Top up function
                          },
                        ),
                        // top up button
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                top: 30,
              )),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    gradient: myColors.backgroundColor1,
                    borderRadius: BorderRadius.circular(30)),
              ),
              Padding(
                  padding: EdgeInsets.only(
                top: 30,
              )),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    gradient: myColors.backgroundColor1,
                    borderRadius: BorderRadius.circular(30)),
              ),
              //TOP UP PULSA CONTAINER
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
