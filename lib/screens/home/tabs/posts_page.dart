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
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Material(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Add your post...',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        actions: <Widget>[
          Icon(Icons.add, color: Colors.deepPurple,),
          SizedBox(width: 15.0,)
        ],
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostTile(
            post: posts[index],
          );
        },
      ),
    );
  }
}
