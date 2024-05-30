import 'package:flutter/material.dart';
import 'package:health_plus/log_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Plus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartPage(),
      routes: {
        '/login': (context) => const LogInScreen(),
      },
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 76, 192),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center children horizontally
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
              'Health Plus',
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
