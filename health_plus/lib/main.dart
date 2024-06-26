import 'package:flutter/material.dart';
import 'package:health_plus/log_in.dart';
import 'package:health_plus/home_page.dart';
import 'package:health_plus/sideTabs/insurance.dart';
import 'package:health_plus/status.dart';
import 'package:health_plus/chat.dart';
import 'package:health_plus/medication.dart';
import 'package:health_plus/dispose.dart';
import 'package:health_plus/sideTabs/profile.dart';
import 'package:health_plus/sideTabs/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Patient Plus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartPage(),
      routes: {
        '/login': (context) => const LogInScreen(),
        '/home': (context) => const MyPageNav(),
      },
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 89, 158),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Icon(
                  Icons.favorite,
                  size: 150,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                Icon(
                  Icons.add,
                  size: 100,
                  color: Color.fromARGB(255, 4, 129, 231),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Patient Plus',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.center, // Center text within its bounds
            ),
            const SizedBox(height: 10.0),
            const Text(
              '"Where compassion\n and healthcare meet"',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.center, // Center text within its bounds
            ),
            const SizedBox(height: 20.0),
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/login'),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 24.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPageNav extends StatefulWidget {
  const MyPageNav({super.key});

  @override
  State<MyPageNav> createState() => _MyPageNavState();
}

class _MyPageNavState extends State<MyPageNav> {
  int _currentIndex = 0;

  final List<Widget> _children = const [
    HomePageScreen(),
    ChatScreen(),
    StatusScreen(),
    MedicationScreen(),
    DisposeScreen()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 23, 23),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 57, 89, 158),
              ),
              child: Column(children: <Widget>[
                Icon(Icons.account_circle, color: Colors.white, size: 80.0),
                SizedBox(height: 10),
                Text(
                  'Bill Bitok',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.file_copy),
              title: const Text('Insurances'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InsuranceScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('About Patient Plus'),
                      content: const Text(
                          'Patient Plus is a mobile application that allows patients to manage their health and communicate with healthcare providers.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Log Out'),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 57, 89, 158),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: 'Chat',
            backgroundColor: Color.fromARGB(255, 57, 89, 158),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_heart_rounded),
            label: 'Status',
            backgroundColor: Color.fromARGB(255, 57, 89, 158),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: 'Medication',
            backgroundColor: Color.fromARGB(255, 57, 89, 158),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete_sharp),
            label: 'Dispose',
            backgroundColor: Color.fromARGB(255, 57, 89, 158),
          ),
        ],
      ),
    );
  }
}
