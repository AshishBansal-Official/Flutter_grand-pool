import 'package:flutter/material.dart';
import 'package:grand_pool/components/expansion_link_tile.dart';
import 'package:grand_pool/database/links_database.dart';

class LinksTab extends StatefulWidget {
  @override
  _LinksTabState createState() => _LinksTabState();
}

class _LinksTabState extends State<LinksTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ExpansionLinkTile(
          title: 'Health & Fitness',
          list: fitnessLinks,
        ),
        ExpansionLinkTile(
          title: 'Entertainment',
          list: entertainmentLinks,
        ),
        ExpansionLinkTile(
          title: 'Games',
          list: gameLinks,
        ),
        ExpansionLinkTile(
          title: 'News & Magazines',
          list: newsLinks,
        ),
        ExpansionLinkTile(
          title: 'Shopping',
          list: shoppingLinks,
        ),
        SizedBox(height: 180,)
      ],
    );
  }
}
