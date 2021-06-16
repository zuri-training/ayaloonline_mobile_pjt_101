import 'package:ayalo_mobile_pjt101/Custom_widgets/signin_button.dart';
import 'package:ayalo_mobile_pjt101/Screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Enter your emails and password',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'user@gmail.com',
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: '********',
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                    onPressed: () => null,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Forgot Password?',
                ),
              ),
              SizedBox(height: 30),
              SignInButton(context, text: 'Log In'),
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
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
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
