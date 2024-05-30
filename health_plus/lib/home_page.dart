import 'package:flutter/material.dart';
import 'package:health_plus/homeTabs/location.dart';
import 'package:health_plus/homeTabs/doctors.dart';
import 'package:health_plus/homeTabs/appointment.dart';
import 'package:health_plus/homeTabs/waiting.dart';

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
          const SizedBox(height: 5.0),
          Card(
              child: ListTile(
            title: const Text('Choose a doctor'),
            leading: const Icon(Icons.person),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DoctorsScreen()));
            },
          )),
          const SizedBox(height: 5.0),
          Card(
              child: ListTile(
            title: const Text("Make an appointment"),
            leading: const Icon(Icons.add_task),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AppointmentScreen()));
            },
          )),
          const SizedBox(height: 5.0),
          Card(
            child: ListTile(
                title: const Text("ER waiting period"),
                leading: const Icon(Icons.calendar_month),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WaitingScreen()));
                }),
          ),
        ],
      ),
    );
  }
}
