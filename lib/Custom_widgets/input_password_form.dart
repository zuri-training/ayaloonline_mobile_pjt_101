import 'package:flutter/material.dart';

Widget passwordForm({
  required String hint,
  required TextEditingController controller,
}) {
  return TextFormField(
    controller: controller,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      } else if (value.length < 6) {
        return 'Password has to  be more than 6 characters';
      }
      return null;
    },
    obscureText: true,
    decoration: InputDecoration(
      labelText: 'Password',
      labelStyle: TextStyle(
          fontWeight: FontWeight.w700, fontSize: 16, fontFamily: 'Gilroy'),
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
