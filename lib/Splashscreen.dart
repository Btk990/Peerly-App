import 'package:flutter/material.dart';
import 'loginpage.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  _FirstscreenState createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 3 seconds and then navigate to the login page
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => loginpage.loginpage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Colors.white),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: (AssetImage('images/frame 3.png')),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Center(
            child: Image(
              image: AssetImage('images/psych.png'),
            ),
          ),
        ],
      ),
    );
  }
}
