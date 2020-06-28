import 'package:flutter/material.dart';
import 'package:grand_pool/components/custom_tile.dart';

class AppTile extends StatelessWidget {
  const AppTile({
    @required this.appName,
    @required this.appDetail,
    this.imageUrl,
  });

  final String appName;
  final String appDetail;
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
            child: Image.asset(
              imageUrl,
            ),
          ),
        ),
      ),
      title: Text(appName ?? 'Unknown'),
      subtitle: Text(appDetail),
    );
  }
}
