import 'package:flutter/material.dart';
import 'package:linkit/screens/Chat/controllers/chat_controller.dart';
import 'package:provider/provider.dart';
import 'components/message_bubble.dart';
import 'components/message_input.dart';

class ChatDetailScreen extends StatefulWidget {
  final String contactName;
  const ChatDetailScreen({super.key, required this.contactName});

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  final _textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<ChatController>(); 
    final t = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.contactName, style: t.textTheme.titleLarge?.copyWith(color: t.colorScheme.onBackground)),
            Text("Active Now", style: t.textTheme.bodySmall),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: controller.messages.length,
              itemBuilder: (context, i) {
                final m = controller.messages[i];
                return MessageBubble(text: m.text, isMe: m.isMe, time: m.time);
              },
            ),
          ),
          MessageInput(
            controller: _textCtrl,
            onSend: () {
              context.read<ChatController>().sendMessage(_textCtrl.text);
              _textCtrl.clear();
            },
          ),
          const SizedBox(height: 50), // Space below input
        ],
      ),
    );
  }

  @override
  void dispose() {
    _textCtrl.dispose();
    super.dispose();
  }
}
