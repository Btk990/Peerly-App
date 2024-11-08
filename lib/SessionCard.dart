// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white, // Background color for the whole screen
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0), // Padding around the card
            child: SessionCard(),
          ),
        ),
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  const SessionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400, // Set the width of the card
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF4EC), // Background color similar to the image
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            spreadRadius: 1, // Spread radius
            blurRadius: 10, // Blur radius
            offset: const Offset(0, 5), // Offset in X and Y direction
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, // Minimize the size of the column
        children: [
          const Text(
            'Upcoming Session',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.brown,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Student Peer Advocate',
            style: TextStyle(
              fontSize: 16,
              color: Colors.brown,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            '7:30 PM - 8:30 PM',
            style: TextStyle(
              fontSize: 16,
              color: Colors.brown,
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              // Handle button tap
            },
            child: const Row(
              children: [
                Text(
                  'Join Now',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.play_circle_fill,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OneCard extends StatelessWidget {
  const OneCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFFFEF3E7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '1 on 1 Sessions',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF573926),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Let’s open up to the things that matter the most',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF573926),
            ),
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              // Handle button tap
            },
            child: const Row(
              children: [
                Text(
                  'Book Now',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFFE8235),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.calendar_today,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SessionCard2 extends StatelessWidget {
  const SessionCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFFFEF3E7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  // Handle CircleAvatar tap
                  print("CircleAvatar tapped");
                },
                child: Ink(
                  decoration: const ShapeDecoration(
                    color: Color(0xFFFE8235),
                    shape: CircleBorder(),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(
                        'images/pretty.jpeg'), // Replace with your image asset
                    radius: 25,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mrs Koomson',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF573926),
                    ),
                  ),
                  Text(
                    'Msc in Clinical Psychology',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF573926),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(
              color: Color.fromRGBO(128, 128, 128, 0.3), thickness: 0.5),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
              const SizedBox(width: 5),
              const Text(
                '18th December \'24',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 15),
              const Icon(Icons.access_time, size: 16, color: Colors.grey),
              const SizedBox(width: 5),
              Text(
                '7:30 PM - 8:30 PM',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle Reschedule button tap
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFE8235),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Reschedule',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 10), // Adjust the space between the buttons
              ElevatedButton.icon(
                onPressed: () {
                  // Handle Join Now button tap
                },
                icon: const Icon(
                  Icons.play_circle_fill,
                  color: Color(0xFFFE8235),
                ),
                label: const Text(
                  'Join Now',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFFE8235),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GreyedOutSessionCard extends StatelessWidget {
  const GreyedOutSessionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xff80efeeee),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                    'images/wpsyche.jpg'), // Replace with your image asset
                radius: 25,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mrs Oduro',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF573926),
                    ),
                  ),
                  Text(
                    'Youth and Adolescent Counselling',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF573926),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(
              color: Color.fromRGBO(128, 128, 128, 0.3), thickness: 0.5),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
              const SizedBox(width: 5),
              const Text(
                '31st March \'22',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 15),
              const Icon(Icons.access_time, size: 16, color: Colors.grey),
              const SizedBox(width: 5),
              Text(
                '7:30 PM - 8:30 PM',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle Re-Book button tap
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFE8235),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Re-Book',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 10), // Adjust the space between the buttons
              ElevatedButton(
                onPressed: () {
                  // Handle View Profile button tap
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'View Profile',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFFE8235),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AnotherGreyedOutSessionCard extends StatelessWidget {
  const AnotherGreyedOutSessionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xff80efeeee),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                    'images/pss.jpeg'), // Replace with your image asset
                radius: 25,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mr Mensah',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF573926),
                    ),
                  ),
                  Text(
                    'Peer Support Specialist',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF573926),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(
              color: Color.fromRGBO(128, 128, 128, 0.3), thickness: 0.5),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
              const SizedBox(width: 5),
              const Text(
                '15th June \'23',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 15),
              const Icon(Icons.access_time, size: 16, color: Colors.grey),
              const SizedBox(width: 5),
              Text(
                '5:00 PM - 6:00 PM',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle Re-Book button tap
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFE8235),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Re-Book',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 10), // Adjust the space between the buttons
              ElevatedButton(
                onPressed: () {
                  // Handle View Profile button tap
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'View Profile',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFFE8235),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class YetAnotherGreyedOutSessionCard extends StatelessWidget {
  const YetAnotherGreyedOutSessionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xff80efeeee),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                    'images/msa.jpg'), // Replace with your image asset
                radius: 25,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ms Adjei',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF573926),
                    ),
                  ),
                  Text(
                    'Substance Abuse Counsellor',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF573926),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(
              color: Color.fromRGBO(128, 128, 128, 0.3), thickness: 0.5),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
              const SizedBox(width: 5),
              const Text(
                '25th August \'23',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 15),
              const Icon(Icons.access_time, size: 16, color: Colors.grey),
              const SizedBox(width: 5),
              Text(
                '2:00 PM - 3:00 PM',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle Re-Book button tap
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFE8235),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Re-Book',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 10), // Adjust the space between the buttons
              ElevatedButton(
                onPressed: () {
                  // Handle View Profile button tap
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'View Profile',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFFE8235),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
