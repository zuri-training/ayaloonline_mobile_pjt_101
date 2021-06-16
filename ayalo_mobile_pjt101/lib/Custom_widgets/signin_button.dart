import 'package:flutter/material.dart';

Widget SignInButton(BuildContext context, {required String text}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 67,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(19)),
      color: Theme.of(context).primaryColor,
    ),
    child: TextButton(
      onPressed: () => null,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: 18,
        ),
      ),
    ),
  );
}
