import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Selected Page: ${_selectedIndex + 1}'),
      ),
      bottomNavigationBar: SafeArea(
        bottom: false, // Disable bottom padding from SafeArea
        child: Wrap(
          children: [
            BottomNavigationBar(
              backgroundColor: Colors.white,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Container(
                    width: 90,
                    height: 90,
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      _selectedIndex == 0
                          ? 'assets/hicons/home_selected.png'
                          : 'assets/hicons/home_unselected.png',
                    ),
                  ),
                  label: '', // Remove the label for a cleaner look
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    width: 90,
                    height: 90,
                    padding: const EdgeInsets.all(10.0),
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
                    width: 90,
                    height: 90,
                    padding: const EdgeInsets.all(10.0),
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
                    width: 90,
                    height: 90,
                    padding: const EdgeInsets.all(10.0),
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
              iconSize: 90, // Adjust the icon size
            ),
          ],
        ),
      ),
    );
  }
}
