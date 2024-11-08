import 'package:flutter/material.dart';
import 'package:peerly/chatsscreen.dart';
import 'homescreen.dart';
import 'communityscreen.dart';
import 'chatsscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SessionScreen(),
    );
  }
}

class SessionScreen extends StatefulWidget {
  const SessionScreen({super.key});

  @override
  _SessionScreenState createState() => _SessionScreenState();
}

class _SessionScreenState extends State<SessionScreen> {
  int _selectedIndex =
      1; // Set the initial selected index to 1 for the video button

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ChatsScreen()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CommunityScreen()),
        );
        break;
      default:
        // Do nothing
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            expandedHeight: 50,
            automaticallyImplyLeading: false, // Remove back button
            backgroundColor: Colors.white,
            title: Padding(
              padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Color(0xFFF09E54),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('images/proficon.jpg'),
                    ),
                  ),
                  Icon(
                    Icons.notifications_none_outlined,
                    size: 30,
                    color: Color(0xFF573926),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                      maxWidth: 400), // Adjust the width as needed
                  child: const Column(
                    children: [
                      SessionCard(),
                      SizedBox(height: 16), // Add space between the cards
                      SessionCard2(),
                      SizedBox(height: 16), // Add space between the cards
                      GreyedOutSessionCard(),
                      SizedBox(height: 16),
                      AnotherGreyedOutSessionCard(),
                      SizedBox(height: 16),
                      YetAnotherGreyedOutSessionCard(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset(
                    _selectedIndex == 0
                        ? 'assets/hicons/home_selected.png'
                        : 'assets/hicons/home_unselected.png',
                  ),
                ),
              ),
              label: '', // Remove the label for a cleaner look
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SessionScreen()),
                  );
                },
                child: Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    _selectedIndex == 1
                        ? 'assets/hicons/video_selected.png'
                        : 'assets/hicons/video_unselected.png',
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(
                  _selectedIndex == 2
                      ? 'assets/hicons/chat_selected.png'
                      : 'assets/hicons/chat_unselected.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(
                  _selectedIndex == 3
                      ? 'assets/hicons/group_selected.png'
                      : 'assets/hicons/group_unselected.png',
                ),
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          iconSize: 30, // Adjust the icon size
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
            'Upcoming Session',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF573926),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Student Peer Advocate',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF573926),
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
          ElevatedButton.icon(
            onPressed: () {
              // Handle button tap
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
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
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
          const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                    'images/pretty.jpeg'), // Replace with your image asset
                radius: 25,
              ),
              SizedBox(width: 10),
              Column(
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
                '19th August\'24',
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
                    'Trauma Counselling',
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
                '18th March \'23',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 15),
              const Icon(Icons.access_time, size: 16, color: Colors.grey),
              const SizedBox(width: 5),
              Text(
                '2:30 PM - 3:30 PM',
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
                    'images/msa.jpg'), // Replace with your image asset
                radius: 25,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mrs Offei',
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
                '20th February \'23',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 15),
              const Icon(Icons.access_time, size: 16, color: Colors.grey),
              const SizedBox(width: 5),
              Text(
                '2:30 PM - 3:30 PM',
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
                    'images/pss.jpeg'), // Replace with your image asset
                radius: 25,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr Bortei',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF573926),
                    ),
                  ),
                  Text(
                    'Substance Abuse',
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
                '1st January \'22',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(width: 15),
              const Icon(Icons.access_time, size: 16, color: Colors.grey),
              const SizedBox(width: 5),
              Text(
                '2:30 PM - 3:30 PM',
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
