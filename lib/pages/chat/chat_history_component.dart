import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextflow_chatgpt/controllers/chat_controller.dart';
import 'package:nextflow_chatgpt/pages/chat/chat_message_balloon_component.dart';

class ChatHistory extends StatelessWidget {
   ChatHistory({super.key});

   final ChatController chatController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Obx(() {
        return ListView.builder(
          itemCount: chatController.messages.length,
          itemBuilder: (context, index) {
            final message = chatController.messages[index];
            return ChatMessageBalloon(
              message: message.message,
              isSender: message.isSender,
            );
          },
        );
      }),
    );
  }
}