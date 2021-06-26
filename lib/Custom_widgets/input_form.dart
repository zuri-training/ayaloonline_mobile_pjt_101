import 'package:flutter/material.dart';

Widget inputForm(String? labelText, String? hint, Widget? icon) {
  return TextFormField(
    decoration: InputDecoration(
      labelText: labelText,
      hintText: hint,
      labelStyle: TextStyle(
        fontSize: 16,
        fontFamily: 'Gilroy',
        fontWeight: FontWeight.w700,
      ),
      suffixIcon: icon,
    ),
  );
}
