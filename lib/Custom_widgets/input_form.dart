import 'package:flutter/material.dart';

Widget inputForm(
  String labelText,
  String hint,
  Widget? icon,
  TextEditingController controller, {
  TextInputType? keytype,
}) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      } else if (keytype == TextInputType.emailAddress) {
        final emailregex = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
        if (!emailregex.hasMatch(value)) {
          return 'Please enter a valid email';
        }
      }
      return null;
    },
    controller: controller,
    keyboardType: keytype,
    decoration: InputDecoration(
      //errorText: controller.text.isEmpty ? 'Can not be empty' : null,
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
