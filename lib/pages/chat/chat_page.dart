import 'package:flutter/material.dart';

import 'chat_history_component.dart';
import 'chat_input_component.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ChatHistory(),
          ),
          SafeArea(
            child: ChatInput(),
          ),
        ],
      ),
    );
  }
}
