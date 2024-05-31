import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        backgroundColor: const Color.fromARGB(255, 57, 89, 158),
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        title: const Text('Home'),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 5.0),
          Card(
            color: const Color.fromARGB(255, 129, 157, 229),
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
              color: const Color.fromARGB(255, 87, 117, 186),
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
              color: const Color.fromARGB(255, 87, 117, 186),
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
            color: const Color.fromARGB(255, 57, 86, 158),
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
          const SizedBox(height: 5.0),
          Card(
              color: const Color.fromARGB(255, 225, 57, 96),
              child: ListTile(
                title: const Text("Find an urgent care location"),
                leading: const FaIcon(FontAwesomeIcons.hospital),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LocationScreen()));
                },
              ))
        ],
      ),
    );
  }
}
