import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 57, 89, 158),
        title: const Row(
          children: <Widget>[
            Spacer(flex: 2),
            Text(
              'Profile',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
      body: const Center(
          child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                'https://static.statusqueen.com/dpimages/thumbnail/dp_images_8-1279.jpg'),
          ),
          SizedBox(height: 10),
          Text(
            'Bill Bitok',
            style: TextStyle(
              color: Color.fromARGB(255, 57, 89, 158),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      )),
    );
  }
}
