import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'sessionscreen.dart';
import 'homescreen.dart';
import 'communityscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChatsScreen(),
    );
  }
}

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selectedIndex = 2; // Set the initial selected index to 2 for ChatsScreen

  void _onItemTapped(int index) {
    if (index != _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });

      if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      } else if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SessionScreen()),
        );
      } else if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ChatsScreen()),
        );
      } else if (index == 3) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CommunityScreen()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundColor: Color(0xFFF09E54),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('images/proficon.jpg'),
              ),
            ),
            Spacer(),
            Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.notifications,
                  color: Colors.orange,
                ),
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 60.0), // Adjust the top padding as needed
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0x15F09E54),
                  borderRadius: BorderRadius.circular(20), // 50% opacity
                ),
                child: const SizedBox(
                  width: double.infinity,
                  height: 900, // Adjust the height as needed
                ),
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Chats',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: const [
                    ChatItem(
                      name: "Mrs Koomson",
                      subtitle: "Peer Support Specialist",
                      message: "make sure you're confident",
                      time: "7:30 PM",
                      unreadCount: 1,
                      image: 'images/pretty.jpeg',
                      isOrangeContainer: true,
                    ),
                    ChatItem(
                      name: "Mrs Offei",
                      subtitle: "Youth and Adolescent Counselling",
                      message: "Self-care is how you take your power",
                      time: "7:45 PM",
                      unreadCount: 1,
                      image: 'images/msa.jpg',
                      isOrangeContainer: false,
                    ),
                    ChatItem(
                      name: "Dr Bortei",
                      subtitle: "Msc in Clinical Psychology",
                      message: "Healing is Journey...",
                      time: "8:56 PM",
                      unreadCount: 2,
                      image: 'images/pss.jpeg',
                      isOrangeContainer: false,
                    ),
                    ChatItem(
                      name: "Mrs Oduro",
                      subtitle: "Msc in Clinical Psychology",
                      message: "",
                      time: "11:45 AM",
                      unreadCount: 2,
                      image: 'images/wpsyche.jpg',
                      isOrangeContainer: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFE8235),
        child: const Icon(Icons.edit),
        foregroundColor: Colors.white,
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
              icon: Container(
                width: 50,
                height: 50,
                child: Image.asset(
                  _selectedIndex == 0
                      ? 'assets/hicons/home_selected.png'
                      : 'assets/hicons/home_unselected.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 50,
                height: 50,
                child: Image.asset(
                  _selectedIndex == 1
                      ? 'assets/hicons/video_selected.png'
                      : 'assets/hicons/video_unselected.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
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
              icon: Container(
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
          selectedItemColor: const Color(0xFFF09E54),
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String name;
  final String subtitle;
  final String message;
  final String time;
  final int unreadCount;
  final String image;
  final bool isOrangeContainer;

  const ChatItem({
    Key? key,
    required this.name,
    required this.subtitle,
    required this.message,
    required this.time,
    required this.unreadCount,
    required this.image,
    required this.isOrangeContainer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  message,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              if (unreadCount > 0)
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.orange,
                      child: Text(
                        unreadCount.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    if (isOrangeContainer)
                      Positioned(
                        right: 2.0,
                        top: 0,
                        child: Container(
                          width: 10,
                          height: 10,
                          color: Colors.transparent,
                        ),
                      ),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
