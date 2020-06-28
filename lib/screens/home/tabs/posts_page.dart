import 'package:flutter/material.dart';
import 'package:grand_pool/components/post_tile.dart';

class PostsPage extends StatefulWidget {
  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  List<String> posts = [
    'this is the first post',
    'The second post will be a bit longer than the first one',
    'This is the third post so it is longer than that of the first and the second post and therefore it will take the greatest space This is the third post so it is longer than that of the first and the second post and therefore it will take the greatest space',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3.0,
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
