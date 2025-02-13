import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextflow_chatgpt/models/chat_message.dart';

class ChatController extends GetxController {
  final TextEditingController textController = TextEditingController();
  var messages = <ChatMessage>[
    ChatMessage(message: "Hello, how can I help you?", isSender: false),
    ChatMessage(
        message: "I need some information about your services.", isSender: true)
  ].obs;

  var isTyping = false.obs; 


  final Dio _dio = Dio();
  final String _azureOpenAiEndpoint = '';
  final String _apiKey = '';

  void handleSend() async {
    String inputValue = textController.text;
    if (inputValue.isNotEmpty) {
      messages.add(ChatMessage(message: inputValue, isSender: true));
      textController.clear();

      isTyping.value = true;
      await sendMessageToAzureOpenAi(inputValue);
      isTyping.value = false;
    }
  }

  Future<void> sendMessageToAzureOpenAi(String message) async {
    try {
      final response = await _dio.post(
        _azureOpenAiEndpoint,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'api-key': _apiKey
          },
        ),
        data: {
          "messages": [
            {
              "role": "system",
              "content":
                  "You are an AI assistant that helps people find information."
            },
            {
              "role": "user",
              "content": message,
            },
          ],
          "temperature": 0.7,
          "max_tokens": 800,
        },
      );

      if (response.statusCode == 200) {
        final responseMessage = response.data['choices'][0]['message']['content'];
        messages.add(ChatMessage(message: responseMessage, isSender: false));
      } else {
        messages.add(ChatMessage(
            message: 'Error: ${response.statusMessage}', isSender: false));
      }
    } catch (e) {
      messages.add(ChatMessage(message: 'Error: $e', isSender: false));
    }
  }
}
