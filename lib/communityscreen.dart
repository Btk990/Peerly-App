import 'package:flutter/material.dart';
import 'sessionscreen.dart';
import 'homescreen.dart';
import 'chatsscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CommunityScreen(),
    );
  }
}

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      } else if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SessionScreen()),
        );
      }
      // Add other navigation cases if needed
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 25.0,
              backgroundColor: Color(0xFFF09E54),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('images/proficon.jpg'),
              ),
            ),
            const Spacer(),
            Stack(
              children: [
                IconButton(
                  icon: const Icon(Icons.notifications_none),
                  color: const Color(0xFFF09E54),
                  onPressed: () {},
                ),
                Positioned(
                  right: 11,
                  top: 11,
                  child: Container(
                    padding: const EdgeInsets.all(0.1),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 18,
                      minHeight: 18,
                    ),
                    child: const Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Wellness Hub',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            TabButton(
                              text: 'Trending',
                              isSelected: true,
                              borderRadius: 10.0,
                              backgroundColor: Color(0xFFFE8235),
                            ),
                            TabButton(
                              text: 'Relationship',
                              borderRadius: 10.0,
                              backgroundColor: Colors.grey,
                            ),
                            TabButton(
                              text: 'Self Care',
                              borderRadius: 10.0,
                              backgroundColor: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Column(
                    children: [
                      const PostCard(
                        avatar: 'images/user1.jpg',
                        username: 'Victoria',
                        time: '3 hrs ago',
                        content:
                            'How can Exposure Therapy assist with overcoming fears and dealing with traumatic memories?',
                        likes: 120,
                        comments: 7,
                        userLiked: true,
                        userCommented: false,
                      ),
                      Divider(color: Colors.grey[300], thickness: 1, height: 1),
                      const PostCard(
                        avatar: 'images/user2.jpg',
                        username: 'Samuel',
                        time: '12 hr ago',
                        content:
                            'How can Acceptance and Commitment Therapy help with dealing with chronic pain or stress?',
                        likes: 98,
                        comments: 12,
                        userLiked: true,
                        userCommented: false,
                      ),
                      Divider(color: Colors.grey[300], thickness: 1, height: 1),
                      const PostCard(
                        avatar: 'images/user3.jpg',
                        username: 'Danielle',
                        time: '16 hrs ago',
                        content:
                            'How can Interpersonal Therapy help with improving relationships and communication with others?',
                        likes: 70,
                        comments: 2,
                        userLiked: true,
                        userCommented: false,
                      ),
                      Divider(color: Colors.grey[300], thickness: 1, height: 1),
                      const PostCard(
                        avatar: 'images/user4.jpg',
                        username: 'Emmanuel',
                        time: '19 hrs ago',
                        content:
                            'How does Family Therapy help with resolving problems within the family?',
                        likes: 45,
                        comments: 1,
                        userLiked: true,
                        userCommented: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFE8235),
        foregroundColor: Colors.white,
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: const Icon(Icons.edit),
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
              icon: SizedBox(
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
              icon: SizedBox(
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
          currentIndex: _selectedIndex = 3,
          selectedItemColor: const Color(0xFFF09E54),
          unselectedItemColor: Colors.grey,
          onTap: (index) {
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
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SessionScreen()),
                );
                break;
              case 2:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => (const ChatsScreen()),
                    ));
                break;
            }
          },
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
        ),
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final double borderRadius;
  final Color backgroundColor;

  const TabButton({
    super.key,
    required this.text,
    this.isSelected = false,
    this.borderRadius = 20.0,
    require,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: isSelected ? Colors.white : Colors.black,
          backgroundColor: isSelected ? Colors.orange : Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String avatar;
  final String username;
  final String time;
  final String content;
  final int likes;
  final int comments;
  final bool userLiked;
  final bool userCommented;

  const PostCard({super.key, 
    required this.avatar,
    required this.username,
    required this.time,
    required this.content,
    required this.likes,
    required this.comments,
    required this.userLiked,
    required this.userCommented,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(avatar),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                icon: Image.asset(
                  'assets/hicons/share.png',
                  color: Colors.grey,
                ),
                onPressed: () {
                  // Implement share functionality here
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(content),
          const SizedBox(height: 10),
          Row(
            children: [
              Row(
                children: [
                  Image.asset(
                    userLiked
                        ? 'assets/hicons/like_selected.png'
                        : 'assets/hicons/like_unselected.png',
                    color: userLiked ? Colors.orange : Colors.grey,
                    width: 24, // Adjust size if needed
                    height: 24, // Adjust size if needed
                  ),
                  const SizedBox(width: 4),
                  Text(likes.toString()),
                ],
              ),
              const SizedBox(width: 20),
              Row(
                children: [
                  Image.asset(
                    userCommented
                        ? 'assets/hicons/chat_selected.png'
                        : 'assets/hicons/chat_unselected.png',
                    color: userCommented ? Colors.orange : Colors.grey,
                    width: 24, // Adjust size if needed
                    height: 24, // Adjust size if needed
                  ),
                  const SizedBox(width: 4),
                  Text(comments.toString()),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
