import 'package:flutter/material.dart';

import 'Splashscreen.dart';

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Home",
      home: Scaffold(
        body: Firstscreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
