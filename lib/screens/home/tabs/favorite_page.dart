import 'package:flutter/material.dart';
import 'package:grand_pool/components/post_tile.dart';

class FavoritePage extends StatelessWidget {
  List<String> posts = [
    'this is the first post',
    'The second post will be a bit longer than the first one',
    'This is the third post so it is longer than that of the first and the second post and therefore it will take the greatest space This is the third post so it is longer than that of the first and the second post and therefore it will take the greatest space',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostTile(
            post: posts[index],
            isFavorite: true,
          );
        },
      ),
    );
  }
}
