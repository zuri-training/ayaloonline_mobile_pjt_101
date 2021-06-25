import 'package:flutter/material.dart';

Widget AyaloCustomButton(BuildContext context,
    {required String text, required VoidCallback onPressed}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 67,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(19)),
      color: Theme.of(context).primaryColor,
    ),
    child: TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontFamily: 'Gilroy',
          fontSize: 18,
        ),
      ),
    ),
  );
}
