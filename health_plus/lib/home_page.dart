import 'package:flutter/material.dart';
import 'package:health_plus/homeTabs/location.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              title: const Text('Find a Location'),
              leading: const Icon(Icons.map),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LocationScreen()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
