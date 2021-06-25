import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
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
