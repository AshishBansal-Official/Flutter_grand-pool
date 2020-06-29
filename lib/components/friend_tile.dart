import 'package:flutter/material.dart';
import 'package:grand_pool/components/avatar.dart';

class FriendTile extends StatelessWidget {
  const FriendTile({
    @required this.name,
    @required this.post,
    @required this.imageUrl,
    this.onTap,
    this.isFavorite = false,
  });

  final String name;
  final String post;
  final String imageUrl;
  final Function onTap;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, top: 6.0, bottom: 2.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            left: BorderSide(
              color: Colors.grey[300],
              style: BorderStyle.solid,
              width: 1.0,
            ),
            bottom: BorderSide(
              color: Colors.grey[300],
              style: BorderStyle.solid,
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
              child: CircleAvatar(
                maxRadius: 30.0,
                backgroundColor: Color(0xFFFAFAFA),
                child: ClipOval(
                  child: imageUrl != null ? Image.network(imageUrl) : Avatar(),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    name ?? 'Unknown',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Text(post),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
