import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 64, 255),
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        title: const Text('Chat'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            color: const Color.fromARGB(255, 129, 157, 229),
            child: ListTile(
              title: const Text('Chat with a doctor'),
              leading: const Icon(Icons.chat_rounded),
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
              child: ListTile(
            title: const Text('Chat with a nurse'),
            leading: const Icon(Icons.chat_rounded),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()));
            },
          )),
          const SizedBox(height: 5.0),
          Card(
              child: ListTile(
            title: const Text('Chat with a pharmacist'),
            leading: const Icon(Icons.chat_rounded),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()));
            },
          )),
          const SizedBox(height: 5.0),
          Card(
              child: ListTile(
            title: const Text('Chat with a therapist'),
            leading: const Icon(Icons.chat_rounded),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()));
            },
          )),
        ],
      ),
    );
  }
}
