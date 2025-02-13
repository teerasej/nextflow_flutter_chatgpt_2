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
    
    Alignment alignment;
    Color? color;

    if (isSender) {
      alignment = Alignment.centerRight;
      color = Colors.blue[200];
    } else {
      alignment = Alignment.centerLeft;
      color = Colors.green[200];
    }

    return Align(
      alignment: alignment,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
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