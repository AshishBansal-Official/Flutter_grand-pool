import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:grand_pool/models/links.dart';
import 'package:url_launcher/url_launcher.dart';

class ExpansionLinkTile extends StatelessWidget {
  String title;
  List<Links> list;

  ExpansionLinkTile({this.title, this.list});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpansionTileCard(
          initiallyExpanded: false,
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          children: <Widget>[
            _buildItem(list[0]),
            _buildItem(list[1]),
            _buildItem(list[2]),
          ],
        ),
        Divider(),
      ],
    );
  }

  Widget _buildItem(Links element) {
    return InkWell(
      onTap: () => _launchURL(link: element.networkLink),
      child: ListTile(
        title: Text(element.name, style: TextStyle(fontSize: 16.0), textAlign: TextAlign.center,),
        trailing: SizedBox(width: 10,),
      ),
    );
  }

  _launchURL({String link}) async {
    String url = link;
    try {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print(e);
    }
  }
}
