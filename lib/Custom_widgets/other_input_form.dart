import 'package:flutter/material.dart';

Widget otherInputForm(String? labelText, String? hint, Widget? icon,
    TextEditingController controller) {
  return TextFormField(
    controller: controller,
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