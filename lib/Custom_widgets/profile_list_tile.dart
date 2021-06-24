import 'package:flutter/material.dart';

Widget ProfileListTile(
    {required IconData icon,
    required String title,
    required VoidCallback onTap}) {
  return ListTile(
    leading: Icon(icon, color: Colors.black),
    title: Text(title),
    onTap: onTap,
  );
}
