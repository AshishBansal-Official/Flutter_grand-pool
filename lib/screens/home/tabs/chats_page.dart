import 'package:flutter/material.dart';
import 'package:grand_pool/screens/chats/start_chat_screen.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'No Messages',
              style: TextStyle(fontSize: 22.0),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => StartChatScreen()));
              },
              child: Text(
                'Start a Message',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
