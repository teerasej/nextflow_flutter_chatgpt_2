import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextflow_chatgpt/controllers/chat_controller.dart';

class ChatInput extends StatelessWidget {
  final ChatController chatController = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: chatController.textController,
              decoration: InputDecoration(
                hintText: 'Type a message',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () => chatController.handleSend(),
          ),
        ],
      ),
    );
  }
}
