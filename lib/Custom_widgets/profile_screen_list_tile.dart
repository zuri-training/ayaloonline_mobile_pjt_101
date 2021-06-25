import 'package:flutter/material.dart';

Widget ProfileListTile(
    {required String title,
    required IconData icon,
    required VoidCallback onTap}) {
  return ListTile(
    leading: Icon(icon, color: Colors.black),
    title: Text('${title}'),
    onTap: onTap,
  );
}
