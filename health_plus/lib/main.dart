import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_plus/log_in.dart';
import 'log_in.dart';

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
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LogInScreen()),
            );
          },
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center children horizontally
          children: <Widget>[
            Stack(
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
            SizedBox(height: 16.0),
            Text(
              'Health Plus',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.center, // Center text within its bounds
            ),
            SizedBox(height: 10.0),
            Text(
              '"Where compassion\n and healthcare meet"',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              textAlign: TextAlign.center, // Center text within its bounds
            ),
          ],
        ),
      ),
    );
  }
}
