import 'package:ayalo_mobile_pjt101/Custom_widgets/input_password_form.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/signin_button.dart';
import 'package:ayalo_mobile_pjt101/Screens/LoggingAndSigningScreens/continue_registration.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
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
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 26),
            ),
            SizedBox(height: 15),
            Text(
              'Enter your credentials to continue',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 25),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 32),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 32),
            passwordForm(hint: 'Input Password'),
            SizedBox(height: 37),
            Wrap(
              children: [
                Text('By continuing you agree to our ',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                Text('Terms of Service',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColor)),
                Text(' and ',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                Text('Privacy Policy.',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColor))
              ],
            ),
            SizedBox(height: 25),
            SignInButton(
              context,
              text: 'Register',
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Registration(),
                ),
              ),
            ),
            SizedBox(height: 25),
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account? ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800)),
                  Text('Sign In',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Theme.of(context).primaryColor)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
