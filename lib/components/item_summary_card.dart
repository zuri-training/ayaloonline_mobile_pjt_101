import 'package:ayalo_mobile_pjt101/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemSummaryCard extends StatelessWidget {
  final String itemName;
  final String leasingCompany;
  final int numberOfStar;
  Function addToCart;
  final String price;
  List<Widget> stars = [];
  final int starInput;

  ItemSummaryCard(
      {required this.itemName,
      required this.leasingCompany,
      required this.numberOfStar,
      required this.addToCart,
      required this.price,
      required this.starInput});

  @override
  Widget build(BuildContext context) {
    if (starInput == 1) {
      stars = [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: Color(0xffF3603F),
        ),
      ];
    } else if (starInput == 2) {
      stars = [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: Color(0xffF3603F),
        ),
        SizedBox(
          width: 6,
        ),
        Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: Color(0xffF3603F),
        ),
      ];
    } else if (starInput == 3) {
      stars = [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: Color(0xffF3603F),
        ),
        SizedBox(
          width: 6,
        ),
        Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: Color(0xffF3603F),
        ),
        SizedBox(
          width: 6,
        ),
        Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: Color(0xffF3603F),
        ),
      ];
    } else if (starInput == 4) {
      stars = [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: Color(0xffF3603F),
        ),
        SizedBox(
          width: 6,
        ),
        Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: Color(0xffF3603F),
        ),
        SizedBox(
          width: 6,
        ),
        Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: Color(0xffF3603F),
        ),
        SizedBox(
          width: 6,
        ),
        Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: Color(0xffF3603F),
        ),
      ];
    } else if (starInput == 5) {
      stars = [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: Color(0xffF3603F),
        ),
        SizedBox(
          width: 6,
        ),
        Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: Color(0xffF3603F),
        ),
        SizedBox(
          width: 6,
        ),
        Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: Color(0xffF3603F),
        ),
        SizedBox(
          width: 6,
        ),
        Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: Color(0xffF3603F),
        ),
        SizedBox(
          width: 6,
        ),
        Icon(
          FontAwesomeIcons.solidStar,
          size: 12,
          color: Color(0xffF3603F),
        ),
      ];
    }
    return Container(
      padding: EdgeInsets.all(15),
      alignment: AlignmentDirectional.centerStart,
      // height: 150,
      width: 175,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset(
          //be weary of this link as it might be different for you.
          //it is mapped from the repo folders
          'assets/images/img1.png', width: 170,
        ),
        Text(
          itemName,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          'Leased By: $leasingCompany ',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(children: stars),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              'N$price',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Gilroy'),
            ),
            SizedBox(
              width: 18,
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: Material(
                borderRadius: BorderRadius.circular(13),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 7),
                  child: Icon(
                    FontAwesomeIcons.shoppingCart,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                color: kGreenColor,
              ),
            )
          ],
        )
      ]),
      decoration: BoxDecoration(
        color: Color(0xffF2F3F2),
        border: Border.all(width: 1, color: kGreenColor),
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
