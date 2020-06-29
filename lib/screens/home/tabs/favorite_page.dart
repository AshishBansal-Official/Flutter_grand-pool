import 'package:flutter/material.dart';
import 'package:grand_pool/components/post_tile.dart';
import 'package:grand_pool/database/posts.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          if (posts[index].isFavorite == true) {
            onTap(index) {
              posts[index].isFavorite = !posts[index].isFavorite;
            }

            return PostTile(
              post: posts[index].post,
              isFavorite: posts[index].isFavorite,
              onTap: () => onTap,
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
