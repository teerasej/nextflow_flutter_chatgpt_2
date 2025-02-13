import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  void _handleSend(BuildContext context) {
    String inputValue = _controller.text;
    // Handle send button press with inputValue
    print(inputValue); // For demonstration purposes
    _controller.clear(); // Clear the input field after sending
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Type a message',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () => _handleSend(context),
          ),
        ],
      ),
    );
  }
}
