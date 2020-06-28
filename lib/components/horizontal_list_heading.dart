import 'package:flutter/material.dart';

class HorizontalListHeading extends StatelessWidget {
  HorizontalListHeading({this.heading});

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          heading,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
