import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff553370),
        title: const Text(
          'Superman v/s Batman',
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/batman.jpg'),
          maxRadius: 50,
        ),
        leadingWidth: 100,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width / 2),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Color(0xff9eacf6)),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('Hello Batman! How are you?'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              clipBehavior: Clip.hardEdge,
              margin:
                  EdgeInsets.only(right: MediaQuery.of(context).size.width / 3),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Color(0xffFAC9C9)),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('Men are brave!'),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type a message...',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16)),
                      ),
                    ),
                    const Icon(
                      Icons.send,
                      color: Colors.deepPurpleAccent,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
