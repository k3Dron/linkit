import 'package:flutter/material.dart';
import 'package:linkit/screens/Chat/models/contacts.dart';
import '../models/chat_contact.dart';

/// IMPORTANT: This file/class must not share the same name as any other controller.
/// If you already have another `ChatController` somewhere, delete/rename it
/// and import THIS one everywhere.
class ChatController extends ChangeNotifier {
  // Contacts (dummy)
  final List<ChatContact> _contacts = [
    ChatContact(
      name: "Christine Griffin",
      lastMessage: "Text me!",
      time: "1h",
      avatarUrl: "https://i.pravatar.cc/150?img=1",
      unread: true,
    ),
    ChatContact(
      name: "Jackson Rodgers",
      lastMessage: "Hey, I hit you up",
      time: "2h",
      avatarUrl: "https://i.pravatar.cc/150?img=2",
    ),
    ChatContact(
      name: "Phoebe Sims",
      lastMessage: "I got you bro!",
      time: "1d",
      avatarUrl: "https://i.pravatar.cc/150?img=3",
    ),
    ChatContact(
      name: "Christine Griffin",
      lastMessage: "Text me!",
      time: "1h",
      avatarUrl: "https://i.pravatar.cc/150?img=1",
      unread: true,
    ),
    ChatContact(
      name: "Jackson Rodgers",
      lastMessage: "Hey, I hit you up",
      time: "2h",
      avatarUrl: "https://i.pravatar.cc/150?img=2",
    ),
    ChatContact(
      name: "Phoebe Sims",
      lastMessage: "I got you bro!",
      time: "1d",
      avatarUrl: "https://i.pravatar.cc/150?img=3",
    ),
    ChatContact(
      name: "Christine Griffin",
      lastMessage: "Text me!",
      time: "1h",
      avatarUrl: "https://i.pravatar.cc/150?img=1",
      unread: true,
    ),
    ChatContact(
      name: "Jackson Rodgers",
      lastMessage: "Hey, I hit you up",
      time: "2h",
      avatarUrl: "https://i.pravatar.cc/150?img=2",
    ),
    ChatContact(
      name: "Phoebe Sims",
      lastMessage: "I got you bro!",
      time: "1d",
      avatarUrl: "https://i.pravatar.cc/150?img=3",
    ),
  ];
  List<ChatContact> get contacts => List.unmodifiable(_contacts);

  // Messages (dummy)
  final List<Message> _messages = [
    Message(text: "Hi! Gerald.", isMe: false, time: "1mo"),
    Message(text: "Fames suspendisse augue commodo est 🎉", isMe: false, time: "1mo"),
    Message(text: "¡Hola, Amigo! 👋", isMe: true, time: "1mo"),
    Message(text: "Massa donec luctus blandit sed! 🍕📣", isMe: true, time: "1mo"),
  ];
  List<Message> get messages => List.unmodifiable(_messages);

  void sendMessage(String text) {
    if (text.trim().isEmpty) return;
    _messages.add(Message(text: text.trim(), isMe: true, time: "now"));
    notifyListeners();
  }
}
