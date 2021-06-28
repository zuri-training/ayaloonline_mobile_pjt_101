import 'package:ayalo_mobile_pjt101/Custom_widgets/custom_button.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/input_form.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/input_password_form.dart';
import 'package:ayalo_mobile_pjt101/Screens/LoggingAndSigningScreens/continue_registration.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  TextEditingController usernamecon = TextEditingController();
  TextEditingController emailcon = TextEditingController();
  TextEditingController passwordcon = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign Up',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Gilroy',
                    fontSize: 26),
              ),
              SizedBox(height: 15),
              Text(
                'Enter your credentials to continue',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Gilroy',
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 25),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    inputForm('Username', 'input username', null, usernamecon,
                        keytype: TextInputType.name),
                    SizedBox(height: 32),
                    inputForm('Email', 'user@domain.com', null, emailcon,
                        keytype: TextInputType.emailAddress),
                    SizedBox(height: 32),
                    passwordForm(
                        hint: 'Input Password', controller: passwordcon),
                  ],
                ),
              ),
              SizedBox(height: 37),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('By continuing you agree to our ',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gilroy')),
                  Text('Terms of Service ',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gilroy',
                          color: Theme.of(context).primaryColor)),
                  Text('and ',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gilroy')),
                  Text('Privacy Policy.',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gilroy',
                          color: Theme.of(context).primaryColor))
                ],
              ),
              SizedBox(height: 25),
              AyaloCustomButton(context, text: 'Register', onPressed: () async {
                /* context.read<FlutterFireAuthService>().signUp(
                      email: emailcon.text.trim(),
                      password: passwordcon.text.trim(),
                      context: context);*/
                if (_formKey.currentState!.validate()) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Registration(
                        username: usernamecon.text.trim(),
                        emailcon: emailcon.text.trim(),
                        passcon: passwordcon.text.trim(),
                      ),
                    ),
                  );
                }
                ;
              }),
              SizedBox(height: 25),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? ',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Gilroy')),
                    Text('Sign In',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Gilroy',
                            color: Theme.of(context).primaryColor)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
