import 'package:flutter/material.dart';

class ChatMessageBalloon extends StatelessWidget {
  final String message;
  final bool isSender;

  const ChatMessageBalloon({
    Key? key,
    required this.message,
    required this.isSender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSender ? Colors.blue[200] : Colors.green[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          message,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }

}