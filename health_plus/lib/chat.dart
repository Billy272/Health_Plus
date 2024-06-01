import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
              'Chat',
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
      body: Column(
        children: <Widget>[
          Card(
            color: const Color.fromARGB(255, 129, 157, 229),
            child: ListTile(
              title: const Text(
                'Chat with a doctor',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              leading: const Icon(
                Icons.chat_rounded,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatScreen()));
              },
            ),
          ),
          const SizedBox(height: 5.0),
          Card(
              color: const Color.fromARGB(255, 129, 157, 229),
              child: ListTile(
                title: const Text('Chat with a nurse',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    )),
                leading: const Icon(Icons.chat_rounded, color: Colors.white),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatScreen()));
                },
              )),
          const SizedBox(height: 5.0),
          Card(
              color: const Color.fromARGB(255, 129, 157, 229),
              child: ListTile(
                title: const Text(
                  'Chat with a pharmacist',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                leading: const Icon(Icons.chat_rounded, color: Colors.white),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatScreen()));
                },
              )),
          const SizedBox(height: 5.0),
          Card(
              color: const Color.fromARGB(255, 129, 157, 229),
              child: ListTile(
                title: const Text('Chat with a therapist',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    )),
                leading: const Icon(Icons.chat_rounded, color: Colors.white),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatScreen()));
                },
              )),
        ],
      ),
    );
  }
}
