import 'package:flutter/material.dart';

class ProfileOptionCard extends StatelessWidget {
  final String title;
  final TextStyle titleStyle;
  final Widget leading;
  final EdgeInsets margin;

  const ProfileOptionCard({
    this.title,
    this.titleStyle,
    this.leading,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin ?? EdgeInsets.only(bottom: 1),
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: ListTile(
          leading: leading ?? null,
          title: Text(
            title ?? 'title',
            style: titleStyle ?? TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
