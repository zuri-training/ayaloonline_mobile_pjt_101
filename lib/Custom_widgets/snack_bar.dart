import 'package:flutter/material.dart';

ScaffoldFeatureController message({
  required BuildContext context,
  required String text,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Theme.of(context).backgroundColor,
      content: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
    ),
  );
}
