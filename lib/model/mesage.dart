import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String senderId;
  final String receiverId;
  final String emailId;
  final String message;
  final Timestamp timestamp;

  Message(
      {required this.senderId,
      required this.emailId,
      required this.message,
      required this.receiverId,
      required this.timestamp});

  Map<String, dynamic> toMap() {
    return {
      'senderId': senderId,
      'email': emailId,
      'message': message,
      'receiverId': receiverId,
      'timestamp': timestamp,
    };
  }
}
