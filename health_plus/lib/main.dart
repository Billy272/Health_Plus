import 'package:flutter/material.dart';

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
      backgroundColor: const Color.fromARGB(255, 129, 157, 229),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center children horizontally
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                const Icon(
                  Icons.favorite,
                  size: 200,
                  color: Colors.white,
                ),
                // Custom plus sign
                const Icon(
                  Icons.add,
                  size: 100,
                  color: const Colors.fromARGB(255, 129, 157, 229),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Health Plus',
              style: TextStyle(
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
          ],
        ),
      ),
    );
  }
}
