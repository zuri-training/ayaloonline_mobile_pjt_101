import 'dart:async';
import 'package:ayalo_mobile_pjt101/Custom_widgets/custom_button.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/drop_down.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/input_form.dart';
import 'package:flutter/material.dart';

class _ProfileDetailPages {
  StreamController<int> _streamController = new StreamController<int>();

  Stream<int> get stream => _streamController.stream;
  StreamSink<int> get streamSink => _streamController.sink;

  void dispose() {
    _streamController.close();
  }
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late _ProfileDetailPages _pages;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = new _ProfileDetailPages();
    _pages.streamSink.add(0);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
        stream: _pages.stream,
        builder: (context, snapshot) {
          var child;
          switch (snapshot.data) {
            case 0:
              child = _firstPage();
              break;
            case 1:
              child = _secondPage();
              break;
          }
          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: EdgeInsets.all(14.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Profile Detail',
                      style: TextStyle(fontFamily: 'Gilroy', fontSize: 26),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Enter your credentials to continue',
                      style: TextStyle(
                          fontFamily: 'Gilroy', fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 32),
                    child
                  ],
                ),
              ),
            ),
          );
        });
  }

  _firstPage() {
    return Column(
      children: [
        inputForm('First Name', 'Ayalo', null),
        SizedBox(height: 32),
        inputForm('Last Name', 'Ogbonna', null),
        SizedBox(height: 32),
        inputForm('Phone Number', '+234', null),
        SizedBox(height: 32),
        inputForm(
          'Account Type',
          'Lesse',
          Icon(
            Icons.keyboard_arrow_down_outlined,
          ),
        ),
        SizedBox(height: 32),
        inputForm(
          'Gender',
          'Male',
          Icon(Icons.keyboard_arrow_down_outlined),
        ),
        SizedBox(height: 72),
        AyaloCustomButton(
          context,
          text: 'Continue',
          onPressed: () => _pages.streamSink.add(1),
        ),
      ],
    );
  }

  _secondPage() {
    return Column(
      children: [
        inputForm('Business Name', 'enter your Business Name', null),
        SizedBox(height: 32),
        inputForm('Business Address', 'enter your Business Address', null),
        SizedBox(height: 32),
        inputForm('CAC No. (if Available)', 'enter your CAC Number', null),
        SizedBox(height: 32),
        inputForm(
          'Method of Verification',
          'BVN',
          DropDown(['BVN', 'NIN']),
        ),
        SizedBox(height: 72),
        AyaloCustomButton(
          context,
          text: 'Save',
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => _Done(),
            ),
          ),
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

class _Done extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, -0.5),
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/confirmation.png'),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.5, 0.7),
              child: AyaloCustomButton(
                context,
                text: 'Home',
                onPressed: () {
                  var count = 0;
                  Navigator.of(context).popUntil((route) {
                    return count++ == 2;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
