import 'package:flutter/material.dart';
import 'package:pulsa_login/main_page.dart';
import 'package:pulsa_login/sign_up.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  bool isChecked = false; // Track the state of the checkbox
  bool password = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.pink, Colors.purple])),
        child: Center(
          child: Container(
              width: 350,
              height: 500,
              child: Card(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsetsDirectional.only(top: 30),
                      child: Text(
                        "LOGIN\nMITRA PULSA",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Neue',
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    //email container
                    Container(
                      height: 70,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[
                              200], // Set the background color of TextField
                          prefixIcon: Container(
                            width: 24, // Customize the width as needed
                            height: 24, // Customize the height as needed
                            child: Align(
                              alignment: Alignment.center,
                              child: Transform.scale(
                                scale: 0.5, // Customize the scale as needed
                                child: ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                      Colors.grey, BlendMode.srcIn),
                                  child: Image.asset(
                                      'images/email.png'), // Replace with your image asset path
                                ),
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.only(left: 30),
                          hintText: 'Email',
                        ),
                      ),
                    ),

                    //passwordContainer
                    Container(
                      height: 70,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                      child: TextField(
                        obscureText: password,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[
                              200], // Set the background color of TextField
                          prefixIcon: Container(
                            width: 24, // Customize the width as needed
                            height: 24, // Customize the height as needed
                            child: Align(
                              alignment: Alignment.center,
                              child: Transform.scale(
                                scale: 0.5, // Customize the scale as needed
                                child: ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                      Colors.grey, BlendMode.srcIn),
                                  child: Image.asset(
                                      'images/padlock.png'), // Replace with your image asset path
                                ),
                              ),
                            ),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              password
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                password =
                                    !password; // Toggle the visibility state
                              });
                            },
                          ),
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.only(left: 30),
                          hintText: 'Password',
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 9),
                            child: Checkbox(
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value ?? false;
                                });
                              },
                              activeColor: Colors
                                  .pink, // Customize the color of the checkbox when selected
                              checkColor: Colors
                                  .white, // Customize the color of the checkmark
                              materialTapTargetSize: MaterialTapTargetSize
                                  .shrinkWrap, // Adjust the size of the checkbox
                            )),
                        Text("Remember me")
                      ],
                    ),

                    SizedBox(
                      width: double.infinity,
                      child: Container(
                        height: 50,
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pink,
                            onPrimary: Colors.white,
                            textStyle: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return main_page();
                            }));
                          },
                          // above is Temporary Function

                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontFamily: 'Neue',
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text("Or login with"),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Row(
                      children: [
                        Spacer(flex: 5),
                        GestureDetector(
                          onTap: () {
                            //Login Facebook Function
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 8, top: 8, bottom: 8),
                            child: Container(
                              height: 40,
                              width: 130,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale:
                                        0.8, // Adjust the scale value to make the image smaller
                                    child: Image.asset(
                                      'images/facebook.png',
                                    ),
                                  ),
                                  SizedBox(
                                      width:
                                          8), // Add some spacing between the image and text
                                  Text(
                                    'Facebook',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Spacer(flex: 2),
                        GestureDetector(
                          onTap: () {
                            //Google Login Action
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 8, top: 8, bottom: 8),
                            child: Container(
                              height: 40,
                              width: 130,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale:
                                        0.8, // Adjust the scale value to make the image smaller
                                    child: Image.asset(
                                      'images/google.png',
                                    ),
                                  ),
                                  SizedBox(
                                      width:
                                          8), // Add some spacing between the image and text
                                  Text(
                                    'Google',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Spacer(flex: 5),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                      children: [
                        Spacer(flex: 5),
                        Container(child: Text("Do Not have an account?")),
                        Text(" "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return sign_up();
                            }));
                          },
                          child: Container(
                            child: Text(
                              "Sign up Now",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.pink),
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 5,
                        )
                      ],
                    )
                  ],
                ),
                color: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              )),
        ));
  }
}
