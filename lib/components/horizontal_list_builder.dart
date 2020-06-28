import 'package:flutter/material.dart';

import 'horizontal_list_card.dart';

class HorizontalListBuilder extends StatelessWidget {
  const HorizontalListBuilder({
    @required this.list,
    @required this.category,
    this.height,
    @required this.type,
  });

  final List list;
  final String category;
  final double height;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 160.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return HorizontalListCard(
            image: 'images/$type/$category/${list[index].appUrl}',
            text: list[index].appName,
            url: list[index].appPlayStoreUrl,
          );
        },
      ),
    );
  }
}
