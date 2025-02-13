import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextflow_chatgpt/models/chat_message.dart';

class ChatController extends GetxController {
  final TextEditingController textController = TextEditingController();
  var messages = <ChatMessage>[
    ChatMessage(message: "Hello, how can I help you?", isSender: false),
    ChatMessage(message: "I need some information about your services.", isSender: true)
  ].obs;

  void handleSend() {
    String inputValue = textController.text;
    if (inputValue.isNotEmpty) {
      messages.add(ChatMessage(message: inputValue, isSender: true));
      textController.clear();
    }
  }

}