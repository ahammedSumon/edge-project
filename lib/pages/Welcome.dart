// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:planner/pages/SignUp.dart';
import 'package:planner/pages/Login.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeHome();
}

class _WelcomeHome extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: 65,
          title: Text(
            "Note Today",
            style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 90, 35, 35),
                fontWeight: FontWeight.w700,),
          )),
      body: _WelcomeScreen(context),
    );
  }
}

Widget _WelcomeScreen(context) {
  TextStyle h3_white = TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w900,
      fontSize: 18,
      color: Colors.white);
  TextStyle h3_orange = TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w900,
      fontSize: 18,
      color: Theme.of(context).colorScheme.error);
  TextStyle h1_orange = TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w900,
      fontSize: 40,
      color: Theme.of(context).colorScheme.error);

  return Container(
    alignment: Alignment.center,
    // decoration: ,
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Welcome!", style: h1_orange),
          SizedBox(height: 50),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            height: 54,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).colorScheme.error),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUp()));
              },
              child: Text(
                "Sign Up",
                style: h3_white,
              ),
            ),
          ),
          SizedBox(height: 24),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            height: 54,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          side: BorderSide(
                              color: Theme.of(context).colorScheme.error)))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              child: Text(
                "Continue With Password",
                style: h3_orange,
              ),
            ),
          ),
          SizedBox(height: 60),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.80,
              child: Text(
                "By continuing you agree to our privacy policy.",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ))
        ]),
  );
}
