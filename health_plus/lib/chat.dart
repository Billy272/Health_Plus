import 'package:flutter/material.dart';
import 'package:health_plus/conversation_list.dart';
import 'package:health_plus/chat_page.dart';

class ChatUsers {
  String name;
  String messageText;
  String imageUrl;
  String time;
  ChatUsers(
      {required this.name,
      required this.messageText,
      required this.imageUrl,
      required this.time});
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Dr.James Russel",
        messageText: "Nice to hear, you're doing good.",
        imageUrl:
            "https://img.etimg.com/thumb/msid-69585275,width-300,height-225,imgsize-252606,resizemode-75/doctor-indi.jpg",
        time: "Now"),
    ChatUsers(
        name: "Nurse Vish",
        messageText: "Please take your medications, as per the prescription",
        imageUrl:
            "https://unsplash.com/photos/girl-in-blue-jacket-holding-red-and-silver-ring-Y-3Dt0us7e0",
        time: "Yesterday"),
  ];
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
        body: ListView.builder(
          itemCount: chatUsers.length,
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 16),
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatPage()),
                );
              },
              child: ConversationList(
                name: chatUsers[index].name,
                messageText: chatUsers[index].messageText,
                imageUrl: chatUsers[index].imageUrl,
                time: chatUsers[index].time,
                isMessageRead: (index == 0 || index == 3) ? true : false,
              ),
            );
          },
        ));
  }
}
