import 'package:ayalo_mobile_pjt101/components/explore_cards.dart';
import 'package:ayalo_mobile_pjt101/components/search.dart';
// import 'package:ayalo_mobile_pjt101/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        HomeSearch(),
        SizedBox(
          height: 10,
        ),
        // ignore: todo
        //TODO: implement gridview with 2 crossaxiscount, test and be sure it works before pushing
        ExploreCards(),
      ],
    ));
  }
}
