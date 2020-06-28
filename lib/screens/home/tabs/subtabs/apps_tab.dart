import 'package:flutter/material.dart';
import 'package:grand_pool/components/horizontal_list_builder.dart';
import 'package:grand_pool/components/horizontal_list_heading.dart';
import 'package:grand_pool/database/apps_database.dart';

class AppsTab extends StatefulWidget {
  @override
  _AppsTabState createState() => _AppsTabState();
}

class _AppsTabState extends State<AppsTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HorizontalListHeading(
          heading: 'Health & Fitness',
        ),
        HorizontalListBuilder(category: 'Health & Fitness', list: fitnessApps, type: 'apps'),
        HorizontalListHeading(
          heading: 'Entertainment',
        ),
        HorizontalListBuilder(
            category: 'Entertainment', list: entertainmentApps, type: 'apps'),
        HorizontalListHeading(heading: 'Games'),
        HorizontalListBuilder(list: gameApps, category: 'Games', type: 'apps'),
        HorizontalListHeading(
          heading: 'News & Magazines',
        ),
        HorizontalListBuilder(list: newsApps, category: 'News & Magazines', type: 'apps'),
        HorizontalListHeading(heading: 'Shopping'),
        HorizontalListBuilder(list: shoppingApps, category: 'Shopping', type: 'apps'),
        SizedBox(height: 180,)
      ],
    );
  }
}
