import 'package:flutter/material.dart';
import 'package:grand_pool/models/user.dart';
import 'package:grand_pool/screens/chats/start_chat_screen.dart';
import 'package:grand_pool/screens/start_new_chat_screen.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.deepPurple,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => StartNewChatScreen(
                                    receiver: User(name: 'Unknown'),
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.question_answer,
                            color: Colors.white,
                          ),
                          Text(
                            'Random Chat',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => StartChatScreen()));
                  },
                  child: Text(
                    'Start a Message',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  color: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
