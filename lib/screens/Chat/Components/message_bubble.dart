import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isMe;
  final String time;

  const MessageBubble({
    super.key,
    required this.text,
    required this.isMe,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final bg = isMe ? t.colorScheme.primary : t.colorScheme.secondary.withOpacity(0.15);
    final fg = isMe ? t.colorScheme.onPrimary : t.textTheme.bodyLarge?.color;

    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(text, style: t.textTheme.bodyLarge?.copyWith(color: fg)),
            const SizedBox(height: 4),
            Text(time, style: t.textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
