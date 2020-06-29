import 'package:flutter/material.dart';
import 'package:grand_pool/components/post_tile.dart';
import 'package:grand_pool/database/posts.dart';
import 'package:grand_pool/models/post.dart';

class PostsPage extends StatefulWidget {
  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  FocusNode myFocus;

  @override
  void initState() {
    super.initState();
    myFocus = FocusNode();
  }

  @override
  void dispose() {
    myFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 3.0,
        title: Material(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: TextFormField(
              focusNode: myFocus,
              decoration: InputDecoration(
                hintText: 'Add your post...',
                border: InputBorder.none,
              ),
              onFieldSubmitted: (post) {
                setState(() {
                  posts.add(
                    Post(
                      post: post,
                      isFavorite: false,
                    ),
                  );
                });
              },
            ),
          ),
        ),
        actions: <Widget>[
          InkWell(
            onTap: () => myFocus.requestFocus(),
            child: Icon(
              Icons.add,
              color: Colors.deepPurple,
            ),
          ),
          SizedBox(
            width: 15.0,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          onTap() {
            print(index);
            setState(() {
              posts[index].isFavorite = !posts[index].isFavorite;
            });
          }

          return PostTile(
            post: posts[index].post,
            isFavorite: posts[index].isFavorite,
            onTap: onTap,
          );
        },
      ),
    );
  }
}
