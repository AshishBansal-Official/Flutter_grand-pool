import 'package:flutter/material.dart';
import 'package:grand_pool/components/custom_tile.dart';
import 'package:grand_pool/components/post_tile.dart';

class PostsScreen extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  List<String> posts = [
    'this is the first post',
    'The second post will be a bit longer than the first one',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return PostTile(
          post: posts[index],
        );
      },
    );
  }
}
