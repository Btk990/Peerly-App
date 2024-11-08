import 'package:flutter/material.dart';
import 'package:peerly/homescreen.dart';

void main() {
  runApp(const SignInScreen());
}

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obscureText = true;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomPaint(
                size: const Size(double.infinity, 420),
                painter: OvalPainter(
                  borderRadius: 100.0, // Adjust to control the roundness
                  offsetX: -50, // Horizontal shift control
                  offsetY: 20, // Vertical shift control
                ),
                child: SizedBox(
                  height: 420,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      const Positioned(
                        top: 60,
                        left: 40,
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 38,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: -220,
                        left: 10,
                        child: Image.asset(
                          'images/happy.png',
                          height: 320,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Enter your Email',
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Password',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    TextField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                        hintText: 'Password',
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Checkbox(
                          value: _rememberMe,
                          onChanged: (bool? value) {
                            setState(() {
                              _rememberMe = value!;
                            });
                          },
                        ),
                        const Text('Remember Me'),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot password?',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(80, 15, 80, 20),
                        minimumSize: const Size.fromHeight(50),
                        backgroundColor: const Color(0xff67a5fd),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const CustomDivider(), // Custom Divider Widget
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(80, 15, 80, 20),
                          minimumSize: const Size.fromHeight(50),
                          backgroundColor: const Color(0xffe88964),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: const Text(
                        'Sign up',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom Divider Widget
class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xFF0C99FF),
            thickness: 1,
            indent: 16.0,
            endIndent: 8.0,
          ),
        ),
        Text(
          "New to peerly?",
          style: TextStyle(color: Colors.black),
        ),
        Expanded(
          child: Divider(
            color: Color(0xFF0C99FF),
            thickness: 1,
            indent: 8.0,
            endIndent: 16.0,
          ),
        ),
      ],
    );
  }
}

// Custom Painter for the rounded shape with controls
class OvalPainter extends CustomPainter {
  final double borderRadius;
  final double offsetX;
  final double offsetY;

  OvalPainter({
    required this.borderRadius,
    required this.offsetX,
    required this.offsetY,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color(0x0ffe8235).withOpacity(0.77)
      ..style = PaintingStyle.fill;

    var borderPaint = Paint()
      ..color = const Color(0xFFFEC473)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;

    var path = Path();

    // Define the path for the shape with controls for roundness and position
    path.moveTo(offsetX, size.height * -0.0 + offsetY);
    path.quadraticBezierTo(offsetX, size.height + offsetY, size.width * 0.8,
        size.height * 0.5 + offsetY);
    path.lineTo(size.width + offsetX, -150 + offsetY);
    path.close();

    // Draw the filled shape
    canvas.drawPath(path, paint);

    // Draw the border around the shape
    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
