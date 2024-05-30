import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Background image
        Positioned.fill(
          child: Image.network(
            'https://whatsnext.nuance.com/wp-content/uploads/10K-splash.jpg',
            fit: BoxFit.cover,
          ),
        ),
        // Faded color overlay
        Positioned.fill(
          child: Container(
            color: const Color.fromARGB(255, 87, 117, 186).withOpacity(0.7),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      labelText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.8),
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 32.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 234, 55, 55),
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      'Log In',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
