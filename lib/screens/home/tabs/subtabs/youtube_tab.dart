import 'package:flutter/material.dart';
import 'package:grand_pool/components/horizontal_list_builder.dart';
import 'package:grand_pool/components/horizontal_list_heading.dart';
import 'package:grand_pool/database/youtube_database.dart';

class YoutubeTab extends StatefulWidget {
  @override
  _YoutubeTabState createState() => _YoutubeTabState();
}

class _YoutubeTabState extends State<YoutubeTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HorizontalListHeading(
          heading: 'Health & Fitness',
        ),
        HorizontalListBuilder(category: 'Health & Fitness', list: fitnessYoutube, type: 'youtube'),
        HorizontalListHeading(
          heading: 'Entertainment',
        ),
        HorizontalListBuilder(
            category: 'Entertainment', list: entertainmentYoutube, type: 'youtube'),
        HorizontalListHeading(heading: 'Games'),
        HorizontalListBuilder(list: gameYoutube, category: 'Games', type: 'youtube'),
        HorizontalListHeading(
          heading: 'News & Magazines',
        ),
        HorizontalListBuilder(list: newsYoutube, category: 'News & Magazines', type: 'youtube'),
        SizedBox(height: 180,)
      ],
    );
  }
}
