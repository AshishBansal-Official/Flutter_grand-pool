import 'package:flutter/material.dart';
import 'package:grand_pool/components/post_tile.dart';
import 'package:grand_pool/database/posts.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          if (posts[index].isFavorite == true) {
            return PostTile(
              post: posts[index].post,
              isFavorite: posts[index].isFavorite,
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
