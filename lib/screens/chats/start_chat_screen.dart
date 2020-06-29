import 'package:flutter/material.dart';
import 'package:grand_pool/components/friend_tile.dart';
import 'package:grand_pool/database/users.dart';
import 'package:grand_pool/models/user.dart';
import 'package:grand_pool/screens/start_new_chat_screen.dart';

class StartChatScreen extends StatefulWidget {
  @override
  _StartChatScreenState createState() => _StartChatScreenState();
}

class _StartChatScreenState extends State<StartChatScreen> {
  List<User> friends;
  List<User> suggestions;

  @override
  void initState() {
    super.initState();
    friends = currentUser.friends;
    suggestions = currentUser.friends;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Material(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Suggested ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.3,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        print('New Chat');
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => StartNewChatScreen(
                                    receiver: suggestions[index])));
                      },
                      child: FriendTile(
                        name: suggestions[index].name,
                        post: 'Last Seen 23 hours ago',
                      ),
                    );
                  },
                  itemCount: suggestions.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
