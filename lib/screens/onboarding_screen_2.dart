// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(32.5),
        child: ListView(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Container(
              height: 213,
              color: Colors.amber,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            Text(
              "Sed do eiusmod tempor\nincididunt ut labore",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .01),
            Text(
              "At vero eos et et iusto odio\ndignissimos",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF9A9DB0),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Container(
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.5),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFf6925c),
                      Color(0xFFf37552),
                    ]),
              ),
              child: Text(
                "Sign Up",
                // textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.5),
                color: Colors.white,
              ),
              child: Text(
                "Log In",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
