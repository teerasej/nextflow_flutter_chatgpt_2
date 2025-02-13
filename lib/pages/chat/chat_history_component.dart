import 'package:flutter/material.dart';
import 'package:nextflow_chatgpt/pages/chat/chat_message_balloon_component.dart';

class ChatHistory extends StatelessWidget {
  const ChatHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: ListView(
        children: [
          ChatMessageBalloon(
            message: "Hello, how are you?",
            isSender: true,
          ),
          ChatMessageBalloon(
            message: "I'm good, thank you!",
            isSender: false,
          ),
        ],
      ),
    );
  }
}