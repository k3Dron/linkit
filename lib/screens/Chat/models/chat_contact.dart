class ChatContact {
  final String name;
  final String lastMessage;
  final String time;
  final String avatarUrl;
  final bool unread;

  ChatContact({
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.avatarUrl,
    this.unread = false,
  });
}
