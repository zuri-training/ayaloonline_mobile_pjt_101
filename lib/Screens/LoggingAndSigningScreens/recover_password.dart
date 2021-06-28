import 'dart:async';
import 'package:ayalo_mobile_pjt101/Custom_widgets/input_form.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/input_password_form.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/custom_button.dart';
import 'package:ayalo_mobile_pjt101/api/generate_profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class _SetNewPassword {
  StreamController<bool> _streamController = new StreamController<bool>();

  Stream<bool> get setNewPasswordStream => _streamController.stream;
  StreamSink<bool> get setNewPasswordSink => _streamController.sink;

  void dispose() {
    _streamController.close();
  }
}

class RecoverPassword extends StatefulWidget {
  @override
  _RecoverPasswordState createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  late _SetNewPassword _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
  TextEditingController emailcon = TextEditingController();
  TextEditingController passcon = TextEditingController();
  TextEditingController repasscon = TextEditingController();

  @override
  void initState() {
    super.initState();
    _password = new _SetNewPassword();
    _password.setNewPasswordSink.add(false);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: _password.setNewPasswordStream,
      builder: (context, snapshot) {
        print(snapshot.hasData);
        print(snapshot.data);
        return Scaffold(
          appBar: AppBar(automaticallyImplyLeading: false),
          backgroundColor: Theme.of(context).backgroundColor,
          body: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recover Password',
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'Gilroy',
                  ),
                ),
                snapshot.data! ? _setPassword() : _sendEmail(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _sendEmail() {
    return Column(
      children: [
        SizedBox(height: 15),
        Text(
          'Enter the email associated with your account and we\'ll send an email with instruction to reset your password',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: 'Gilroy',
          ),
        ),
        SizedBox(height: 31),
        /*TextFormField(
          decoration: InputDecoration(
            
              labelText: 'Email',
              labelStyle: TextStyle(
                fontSize: 16,
                fontFamily: 'Gilroy',
              ),
              suffixIcon: Icon(Icons.done)),
        ),*/
        Form(
          key: _formKey,
          child: inputForm(
            'Email',
            'Enter your email',
            Icon(Icons.done),
            emailcon,
            keytype: TextInputType.emailAddress,
          ),
        ),
        SizedBox(height: 31),
        AyaloCustomButton(
          context,
          text: 'Send Link',
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              await context
                  .read<FlutterFireAuthService>()
                  .sendPasswordReset(emailcon.text.trim(), context);
              //_password.setNewPasswordSink.add(true);

            }
          },
        ),
      ],
    );
  }

  Widget _setPassword() {
    return Column(
      children: [
        SizedBox(height: 15),
        Text(
          'Enter new password',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 73),
        Form(
          key: _formKey2,
          child: Column(
            children: [
              passwordForm(hint: 'Input new password', controller: passcon),
              SizedBox(height: 31),
              passwordForm(hint: 'Confirm new password', controller: repasscon),
              SizedBox(height: 31),
            ],
          ),
        ),
        AyaloCustomButton(
          context,
          text: 'Reset Password',
          onPressed: () => null,
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _password.dispose();
  }
}
