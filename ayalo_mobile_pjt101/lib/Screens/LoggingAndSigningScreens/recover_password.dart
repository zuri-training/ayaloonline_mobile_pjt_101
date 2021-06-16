import 'package:ayalo_mobile_pjt101/Custom_widgets/input_password_form.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/signin_button.dart';
import 'package:flutter/material.dart';

class RecoverPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      backgroundColor: Theme.of(context).backgroundColor,
      body: _SetPassword(),
    );
  }
}

class _SendEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recover Password',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Enter the email associated with your account and we\'ll send an email with instruction to reset your password',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 31),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
                suffixIcon: Icon(Icons.done)),
          ),
          SizedBox(height: 31),
          SignInButton(context, text: 'Send Link', onPress: () => null),
        ],
      ),
    );
  }
}

class _SetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recover Password',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Enter new password',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 73),
          passwordForm(hint: 'Input new password'),
          SizedBox(height: 31),
          passwordForm(hint: 'Confirm new password'),
          SizedBox(height: 31),
          SignInButton(context, text: 'Reset Password', onPress: () => null),
        ],
      ),
    );
  }
}
