import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final Color backgroundColor;
  final double maxRadius;
  final Color iconColor;
  final double iconSize;

  const Avatar({
    this.backgroundColor,
    this.maxRadius,
    this.iconColor,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor ?? Colors.deepPurple,
      maxRadius: maxRadius ?? 36.0,
      child: ClipRRect(
        child: Icon(
          Icons.person,
          color: iconColor ?? Colors.white,
          size: iconSize ?? 22,
        ),
      ),
    );
  }
}
