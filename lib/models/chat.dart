import 'package:grand_pool/database/users.dart';
import 'package:grand_pool/models/user.dart';

class Chat {

  User receiver;
  User sender = currentUser;
  String chat;
  String time;

  Chat({this.receiver, this.chat, this.time});

}