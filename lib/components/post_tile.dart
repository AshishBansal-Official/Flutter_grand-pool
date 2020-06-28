import 'package:flutter/material.dart';
import 'package:grand_pool/components/custom_tile.dart';

class PostTile extends StatelessWidget {
  const PostTile({
    @required this.name,
    @required this.post,
    this.imageUrl,
  });

  final String name;
  final String post;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      leading: Padding(
        padding: const EdgeInsets.all(4.0),
        child: CircleAvatar(
          maxRadius: 30.0,
          backgroundColor: Color(0xFFFAFAFA),
          child: ClipOval(
            child: imageUrl != null
                ? Image.network(imageUrl)
                : Image.asset(
                    'images/profile_pic.png',
                  ),
          ),
        ),
      ),
      title: Text(name ?? 'Unknown'),
      subtitle: Text(post),
      trailing: Column(
        children: <Widget>[
          SizedBox(
            height: 5.0,
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.red,
          ),
          SizedBox(
            height: 5.0,
          ),
          Icon(Icons.reply),
        ],
      ),
    );
  }
}