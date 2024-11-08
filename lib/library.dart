import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Library(),
    );
  }
}

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle Journal button press
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        backgroundColor:
                            const Color(0xFFF5F5F5), // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20.0), // Rounded corners
                        ),
                        elevation: 0, // Remove shadow
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment
                            .start, // Align content to the start (left)
                        children: [
                          Icon(Icons.book, color: Color(0xFFD6CCC6)),
                          SizedBox(width: 10),
                          Text(
                            'Journal',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15), // Space between the buttons
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle Library button press
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        backgroundColor:
                            const Color(0xFFF5F5F5), // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20.0), // Rounded corners
                        ),
                        elevation: 0, // Remove shadow
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment
                            .start, // Align content to the start (left)
                        children: [
                          Icon(Icons.library_books, color: Color(0xFFD6CCC6)),
                          SizedBox(width: 10),
                          Text(
                            'Library',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5), // Background color
                  borderRadius: BorderRadius.circular(20.0), // Rounded corners
                ),
                child: const Text(
                  '“It is better to conquer yourself than to win a thousand battles”',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
