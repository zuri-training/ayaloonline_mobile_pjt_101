import 'package:flutter/material.dart';

Widget ProfileListTile(
    {required IconData icon,
    required color,
    required String title,
    required VoidCallback onTap}) {
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(title),
    onTap: onTap,
  );
}
