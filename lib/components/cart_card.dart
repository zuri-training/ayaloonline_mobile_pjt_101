import 'package:ayalo_mobile_pjt101/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 110,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.symmetric(
                horizontal: BorderSide(color: Color(0xffE2E2E2), width: 2))),
        child: Row(
          children: [
            Expanded(flex: 1, child: Image.asset('assets/images/img1.png')),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tractor',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text('lease by: Makoko Ltd'),
                      SizedBox(
                        height: 8,
                      ),
                      AdditionButton()
                    ],
                  ),
                )),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 10),
                    child: Icon(
                      FontAwesomeIcons.times,
                      color: Color(0xffB3B3B3),
                      size: 24,
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    'N22,000',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class AdditionButton extends StatelessWidget {
  const AdditionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Icon(
              FontAwesomeIcons.minus,
              size: 15,
              color: kGreenColor,
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text('2'),
          ),
          decoration: BoxDecoration(
              border: Border.all(color: kGreenColor, width: 2),
              borderRadius: BorderRadius.circular(10)),
        ),
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Icon(
              FontAwesomeIcons.plus,
              size: 15,
              color: kGreenColor,
            ),
          ),
        ),
      ],
    );
  }
}
