import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pulsa_login/login_page.dart';

class sign_up extends StatefulWidget {
  const sign_up({super.key});

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false; // Track the state of the checkbox
    bool password = true;
    return Scaffold(
        body: Container(
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
                          padding: EdgeInsetsDirectional.only(top: 20),
                          child: Text(
                            "SIGN UP\nMITRA PULSA",
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
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 20),
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
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 20),
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

                        //Repeat Password
                        Container(
                          height: 70,
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 20),
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
                              hintText: 'Repeat Password',
                            ),
                          ),
                        ),

                        SizedBox(
                          width: double.infinity,
                          child: Container(
                            height: 50,
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.pink,
                                onPrimary: Colors.white,
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                // Add your button's functionality here
                              },
                              child: const Text(
                                'Sign Up',
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
                          child: Text("Or Sign up with"),
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
                            Container(child: Text("Already Have an account?")),
                            Text(" "),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return login_page();
                                }));
                              },
                              child: Container(
                                child: Text(
                                  "Sign in",
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
            )));
  }
}
