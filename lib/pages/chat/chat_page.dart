import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextflow_chatgpt/controllers/chat_controller.dart';

import 'chat_history_component.dart';
import 'chat_input_component.dart';

class ChatPage extends StatelessWidget {
   ChatPage({super.key});

  final ChatController chatController = Get.put(ChatController());

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
