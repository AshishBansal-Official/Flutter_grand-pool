import 'package:flutter/material.dart';
import 'package:grand_pool/components/custom_tile.dart';
import 'package:grand_pool/components/friend_tile.dart';
import 'package:grand_pool/database/users.dart';
import 'package:grand_pool/models/user.dart';

class FriendsListScreen extends StatefulWidget {
  @override
  _FriendsListScreenState createState() => _FriendsListScreenState();
}

class _FriendsListScreenState extends State<FriendsListScreen> {
    List<User> friendsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          print(currentUser.friends[index].name);
          return FriendTile(
            name: currentUser.friends[index].name,
            post: 'Last Seen 23 hours ago',
          );
        },
        itemCount: currentUser.friends.length,
      ),
    );
  }
}