import 'package:ayalo_mobile_pjt101/components/alerts.dart';
import 'package:ayalo_mobile_pjt101/components/container_selector.dart';
import 'package:ayalo_mobile_pjt101/components/search.dart';
import 'package:ayalo_mobile_pjt101/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            HomeSearch(),
            CompleteSignUpAlert(),
            CategorySelector(
              name: 'BEST OFFERS',
              onPress: () {},
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              width: 30,
              child: Column(children: [
                Image.asset(
                    //be weary of this link as it might be different for you.
                    //it is mapped from the repo folders
                    'images/img1"'),
                Text(
                  'Tractor',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ]),
              decoration: BoxDecoration(
                color: Color(0xffF2F3F2),
                border: Border.all(width: 1, color: kGreenColor),
                borderRadius: BorderRadius.circular(10.0),
              ),
            )
          ],
        ));
  }
}
