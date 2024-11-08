
import 'package:flutter/material.dart';
import 'package:peerly/chatsscreen.dart';
import 'package:peerly/communityscreen.dart';
import 'package:peerly/sessionscreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _toggleDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      Navigator.of(context).pop(); // Close drawer if it's open
    } else {
      _scaffoldKey.currentState!.openDrawer(); // Open drawer if it's closed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // Add the scaffold key
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Ben'),
              accountEmail: Text('Amakyeamofa@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/proficon.jpg'),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFF09E54),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.supervised_user_circle_rounded),
              title: const Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text('Sessions'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.people_alt_rounded),
              title: const Text('Counsellors'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('History'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 50,
            automaticallyImplyLeading: false, // Remove back button
            backgroundColor: Colors.white,
            title: Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: _toggleDrawer, // Toggle drawer on avatar click
                    child: const CircleAvatar(
                      radius: 25.0,
                      backgroundColor: Color(0xFFF09E54),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('images/proficon.jpg'),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.notifications_none_outlined,
                    size: 30,
                    color: Color(0xFF573926),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: 60,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Good Morning,\n',
                                style: TextStyle(fontSize: 20),
                              ),
                              TextSpan(
                                text: 'Ben!',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'How are you feeling today?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FeelingIcon(
                          icon: Icons.sentiment_very_satisfied,
                          label: 'Happy',
                          color: Colors.pink,
                        ),
                        FeelingIcon(
                          icon: Icons.sentiment_satisfied,
                          label: 'Calm',
                          color: Colors.purple,
                        ),
                        FeelingIcon(
                          icon: Icons.sentiment_neutral,
                          label: 'Manic',
                          color: Colors.cyan,
                        ),
                        FeelingIcon(
                          icon: Icons.sentiment_dissatisfied,
                          label: 'Angry',
                          color: Colors.orange,
                        ),
                        FeelingIcon(
                          icon: Icons.sentiment_very_dissatisfied,
                          label: 'Sad',
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      const SessionCard(),
                      const SizedBox(height: 20),
                      const OneononeCard(),
                      const SizedBox(height: 10),
                      const Library(),
                      const SizedBox(height: 10), // Adjust spacing as needed
                      Subscribe(
                        onPressed: () {
                          // Handle Subscribe button press
                        },
                      ),
                    ],
                  ),
                ],
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
              icon: SizedBox(
                width: 50, // Reduced width
                height: 50, // Reduced height

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
                width: 50, // Reduced width
                height: 50, // Reduced height

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
                width: 50, // Reduced width
                height: 50, // Reduced height
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
                width: 50, // Reduced width
                height: 50, // Reduced height

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
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
            switch (index) {
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
                  MaterialPageRoute(builder: (context) => const ChatsScreen()),
                );
                break;
              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CommunityScreen()),
                );
                break;
            }
          },
          type: BottomNavigationBarType.fixed,
          iconSize: 50,
        ),
      ),
    );
  }
}

class FeelingIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const FeelingIcon({super.key, 
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Icon(
              icon,
              size: 30.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
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

class OneononeCard extends StatelessWidget {
  const OneononeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFFFEF3E7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
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
                  'Open up about the things \n that matter the most',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF573926),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle button tap
                  },
                  icon: const Icon(
                    Icons.calendar_today,
                    color: Colors.orange,
                  ),
                  label: const Text(
                    'Book Now',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFFE8235),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, // Background color
                    shadowColor: Colors.transparent, // Remove shadow
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          SizedBox(
            width: 110,
            height: 110,
            child: Image.asset(
              'assets/hicons/icon.png', // Path to the icon image
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
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
                      SizedBox(width: 20),
                      Icon(Icons.book, color: Color(0xFFD6CCC6)),
                      SizedBox(width: 10),
                      Text(
                        'Journal',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
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
                      SizedBox(width: 20),
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
          const SizedBox(height: 15),
          const Text(
            '“It is better to conquer yourself than to win a thousand battles”',
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class Subscribe extends StatelessWidget {
  final VoidCallback onPressed;

  const Subscribe({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 15.0), // Apply padding similar to SessionCard
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF55A06F),
          padding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: SizedBox(
          width: double.infinity, // Occupy available width
          height: 180,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Plan Expired',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Get back chat access and\nsession credits',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            'Buy More',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Icon(
                  Icons.spa,
                  color: Colors.white.withOpacity(0.2),
                  size: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
