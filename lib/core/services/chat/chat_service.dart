import 'package:chat/core/models/chat_massage.dart';
import 'package:chat/core/models/chat_user.dart';
import 'package:chat/core/services/chat/chat_firebase_service.dart';
// ignore: unused_import
import 'package:chat/core/services/chat/chat_mock_service.dart';

abstract class ChatService {
  Stream<List<ChatMessage>> messagesStream();
  Future<ChatMessage?> save(String text, ChatUser user);

  factory ChatService() {
    // return ChatMockService();
    return ChatFirebaseService();
  }
}
