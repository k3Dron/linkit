import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  final String name;
  final String lastMessage;
  final String time;
  final String avatarUrl;
  final bool unread;
  final VoidCallback onTap;

  const ContactTile({
    super.key,
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.avatarUrl,
    required this.unread,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(avatarUrl)),
      title: Text(name, style: t.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
      subtitle: Text(lastMessage, style: t.textTheme.bodyMedium),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time, style: t.textTheme.bodySmall),
          if (unread) const SizedBox(height: 6),
          if (unread) const CircleAvatar(radius: 4, backgroundColor: Colors.red),
        ],
      ),
      onTap: onTap,
    );
  }
}
