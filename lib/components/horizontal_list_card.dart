import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HorizontalListCard extends StatelessWidget {
  final String image;
  final String text;
  final String url;

  HorizontalListCard({
    this.image,
    this.text,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () => _launchURL(appUrl: url),
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(8.0),
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(8.0),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,
                    color: Colors.grey[300],
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: 100.0,
            ),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }

  _launchURL({String appUrl}) async {
    String url = appUrl;
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
