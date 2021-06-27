import 'dart:async';

import 'package:ayalo_mobile_pjt101/Custom_widgets/input_form.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/custom_button.dart';
import 'package:ayalo_mobile_pjt101/Screens/home.dart';
import 'package:ayalo_mobile_pjt101/api/databaseservice.dart';
import 'package:ayalo_mobile_pjt101/api/generate_profile.dart';
import 'package:ayalo_mobile_pjt101/state_manager/log_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class _SwitchPages {
  StreamController<bool> _switchPagesController = new StreamController<bool>();

  Stream<bool> get switchPagesStream => _switchPagesController.stream;
  StreamSink<bool> get switchPagesSink => _switchPagesController.sink;

  dispose() {
    _switchPagesController.close();
  }
}

class Registration extends StatefulWidget {
  final String username;
  final String emailcon;
  final String passcon;
  Registration({
    required this.username,
    required this.emailcon,
    required this.passcon,
  });

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  late _SwitchPages _pages;
  TextEditingController fnamecon = TextEditingController();
  TextEditingController lnamecon = TextEditingController();
  TextEditingController phonenocon = TextEditingController();
  TextEditingController acctycon = TextEditingController();
  TextEditingController gendercon = TextEditingController();
  TextEditingController businamecon = TextEditingController();
  TextEditingController statecon = TextEditingController();
  TextEditingController occupycon = TextEditingController();
  TextEditingController verifycon = TextEditingController();

  @override
  void initState() {
    super.initState();
    _pages = _SwitchPages();
    _pages.switchPagesSink.add(false);
  }

  @override
  Widget build(BuildContext context) {
    final logStatus = Provider.of<LogStatus>(context);
    print(logStatus.status);
    return StreamBuilder<bool>(
        stream: _pages.switchPagesStream,
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(automaticallyImplyLeading: false),
            backgroundColor: Theme.of(context).backgroundColor,
            body: Padding(
              padding: const EdgeInsets.all(14.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Continue Registration',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Enter your credentials to continue',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gilroy'),
                    ),
                    SizedBox(height: 25),
                    snapshot.data!
                        ? _secondPage(context, logStatus)
                        : _firstPage(context),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget _firstPage(BuildContext context) {
    return Column(
      children: [
        inputForm('First Name', 'enter your firstname', null, fnamecon),
        SizedBox(height: 32),
        inputForm('Last Name', 'enter your lastname', null, lnamecon),
        SizedBox(height: 32),
        inputForm('Phone Number', '+234', null, phonenocon),
        SizedBox(height: 32),
        inputForm('Account Type', 'Lesse', Icon(Icons.expand_more), acctycon),
        SizedBox(height: 32),
        inputForm('Gender', 'Male', Icon(Icons.expand_more), gendercon),
        SizedBox(height: 77),
        AyaloCustomButton(context,
            text: 'Continue',
            onPressed: () => _pages.switchPagesSink.add(true)),
      ],
    );
  }

  Widget _secondPage(BuildContext context, [LogStatus? logStatus]) {
    return Column(
      children: [
        inputForm('Occupation', 'enter your occupation', null, occupycon),
        SizedBox(height: 32),
        inputForm('Select State', 'Lagos', Icon(Icons.expand_more), statecon),
        SizedBox(height: 32),
        inputForm(
            'Business Name', 'enter your business name', null, businamecon),
        SizedBox(height: 77),
        AyaloCustomButton(
          context,
          text: 'Sign Up',
          onPressed: () async {
            String? uid = await context.read<FlutterFireAuthService>().signUp(
                  email: widget.emailcon,
                  password: widget.passcon,
                );
            await UserDatabase(uid).upadteUserdetails(
              username: widget.username,
              firstname: fnamecon.text.trim(),
              phoneno: phonenocon.text.trim(),
              verification: verifycon.text.trim(),
              lastname: lnamecon.text.trim(),
              accountType: acctycon.text.trim(),
              gender: gendercon.text.trim(),
              occupation: occupycon.text.trim(),
              state: statecon.text.trim(),
              businessname: businamecon.text.trim(),
            );
            //context: context);

            int count = 0;
            logStatus!.loggedIn(true);
            Navigator.of(context).popUntil((route) => count++ == 2);
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pages.dispose();
  }
}
