import 'package:flutter/material.dart';

Widget passwordForm({required String hint}) {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      labelText: 'Password',
      labelStyle: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
      hintText: hint,
      suffixIcon: IconButton(
        icon: Icon(
          Icons.remove_red_eye,
          color: Colors.grey,
        ),
        onPressed: () => null,
      ),
    ),
  );
}
