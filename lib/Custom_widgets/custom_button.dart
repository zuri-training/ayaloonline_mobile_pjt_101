import 'package:flutter/material.dart';

Widget AyaloCustomButton(BuildContext context,
    {required String text, Color? color, required VoidCallback onPressed}) {
  var fontColor;
  color == null
      ? fontColor = Colors.white
      : fontColor = Theme.of(context).primaryColor;
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 67,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(19)),
      color: color == null ? Theme.of(context).primaryColor : color,
    ),
    child: TextButton(
      style: ButtonStyle(),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: fontColor,
          fontWeight: FontWeight.w800,
          fontFamily: 'Gilroy',
          fontSize: 18,
        ),
      ),
    ),
  );
}
