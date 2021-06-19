import 'package:ayalo_mobile_pjt101/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CompleteSignUpAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Icon(
                FontAwesomeIcons.bell,
                color: kGreenColor,
                size: 51,
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'You are almost done!',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: kGreenColor,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Click Here to finish setting up your account and start leasing.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(color: kGreenColor, width: 1.0),
          borderRadius: BorderRadius.circular(17.0),
        ),
      ),
    );
  }
}
