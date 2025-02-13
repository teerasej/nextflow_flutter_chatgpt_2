import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nextflow_chatgpt/pages/chat/chat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Nextflow ChatGPT',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: '/', page: () => ChatPage()),
      ],
    );
  }
}
