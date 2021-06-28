import 'dart:ffi';

import 'package:ayalo_mobile_pjt101/Custom_widgets/custom_button.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/input_form.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/input_password_form.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/snack_bar.dart';
import 'package:ayalo_mobile_pjt101/Screens/LoggingAndSigningScreens/recover_password.dart';
import 'package:ayalo_mobile_pjt101/Screens/LoggingAndSigningScreens/signup_screen.dart';
import 'package:ayalo_mobile_pjt101/Screens/home.dart';
import 'package:ayalo_mobile_pjt101/api/generate_profile.dart';
import 'package:ayalo_mobile_pjt101/state_manager/log_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcon = TextEditingController();

  TextEditingController passcon = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailcon.dispose();
    passcon.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final logStatus = Provider.of<LogStatus>(context);
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Log in',
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'Gilroy',
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Enter your emails and password',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 40),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    inputForm('Email', 'user@domain.com', null, emailcon,
                        keytype: TextInputType.emailAddress),
                    SizedBox(height: 16),
                    passwordForm(
                      hint: 'Input Password',
                      controller: passcon,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => RecoverPassword(),
                    ),
                  ),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              AyaloCustomButton(
                context,
                text: 'Log In',
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    print('Seems validation is working');
                    await context.read<FlutterFireAuthService>().signIn(
                          email: emailcon.text.trim(),
                          password: passcon.text.trim(),
                          context: context,
                        );
                    //}
                    if (context
                            .read<FlutterFireAuthService>()
                            .firebaseAuth
                            .currentUser !=
                        null) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    }
                  } else {
                    print('Seems validation is not working');
                    print(_formKey.currentState?.validate());
                    message(
                        context: context, text: 'One or more field is empty');
                  }
                  /*Navigator.replace(context,
                          oldRoute: oldRoute, newRoute: newRoute)(
                      context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                      );*/

                  // logStatus.loggedIn(true);
                },
              ),
              SizedBox(height: 25),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignUp(),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
