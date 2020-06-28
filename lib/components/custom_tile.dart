import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final Widget leading;
  final Widget title;
  final Widget subtitle;
  final Widget trailing;
  final EdgeInsets margin;
  final GestureTapCallback onTap;
  final GestureLongPressCallback onLongPress;

  const CustomTile({
    @required this.leading,
    @required this.title,
    @required this.subtitle,
    this.trailing,
    this.margin = const EdgeInsets.all(0),
    this.onTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          child: Container(
            margin: margin,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(flex: 1, child: leading ?? Container()),
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        title,
                        SizedBox(
                          height: 5,
                        ),
                        subtitle,
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                trailing ?? Container(),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
