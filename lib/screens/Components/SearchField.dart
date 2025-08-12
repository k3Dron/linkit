import 'package:flutter/material.dart';

class InputFieldWithSend extends StatefulWidget {
  final void Function(String) onSend;

  const InputFieldWithSend({Key? key, required this.onSend}) : super(key: key);

  @override
  _InputFieldWithSendState createState() => _InputFieldWithSendState();
}

class _InputFieldWithSendState extends State<InputFieldWithSend> {
  final TextEditingController _controller = TextEditingController();

  void _handleSend() {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      print('Sending: $text'); // Print statement added
      widget.onSend(text);
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Enter your message',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              onSubmitted: (_) => _handleSend(),
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: _handleSend,
          ),
        ],
      ),
    );
  }
}
