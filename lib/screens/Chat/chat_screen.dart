import 'package:flutter/material.dart';
import 'package:linkit/screens/Chat/Components/chat_contact_tile.dart';
import 'package:linkit/screens/Chat/inchat_screen.dart';
import 'package:provider/provider.dart';
import 'controllers/chat_controller.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ChangeNotifierProvider(
      create: (_) => ChatController(),
      child: Builder(
        builder: (context) {
          final controller = context.watch<ChatController>();
          final t = Theme.of(context);

          return Scaffold(
            appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("linkit", style: theme.textTheme.headlineMedium)
          ],
        ),
      ),
            body: ListView.builder(
              itemCount: controller.contacts.length,
              itemBuilder: (context, i) {
                final c = controller.contacts[i];
                return ContactTile(
                  name: c.name,
                  lastMessage: c.lastMessage,
                  time: c.time,
                  avatarUrl: c.avatarUrl,
                  unread: c.unread,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ChatDetailScreen(contactName: "Phoebe Sims"),
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
