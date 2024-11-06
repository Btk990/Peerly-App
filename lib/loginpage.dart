import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:peerly/homescreen.dart';
import 'package:peerly/detailspage.dart';

class loginpage extends StatelessWidget {
  const loginpage.loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('images/llp.png'))),
        child: Stack(
          children: [
            const Center(
              child: Image(
                image: AssetImage('images/loginlady.png'),
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.white,
                toolbarHeight: 150,
                title: const Text(
                  "It's Okay Not \n To Be Okay",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 630.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(80, 15, 80, 20),
                    backgroundColor: const Color(0xff67a5fd),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Sign In'),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 775.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(70, 15, 80, 20),
                      backgroundColor: const Color(0xffe88964),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      foregroundColor: Colors.white),
                  child: const Text('Sign Up'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
