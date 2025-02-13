import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  final TextEditingController textController = TextEditingController();

  void handleSend() {
    String inputValue = textController.text;
    print(inputValue); 
    textController.clear(); 
  }

}