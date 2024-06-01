import 'package:flutter/material.dart';

class DisposeScreen extends StatelessWidget {
  const DisposeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 57, 89, 158),
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          icon: const Icon(Icons.menu, color: Colors.white, size: 30),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        title: const Row(
          children: <Widget>[
            Spacer(flex: 2),
            Text(
              'Dispose',
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
        child: Text('Dispose Screen'),
      ),
    );
  }
}
