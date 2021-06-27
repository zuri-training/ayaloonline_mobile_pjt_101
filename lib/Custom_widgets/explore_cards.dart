import 'package:ayalo_mobile_pjt101/constants/colors.dart';
import 'package:flutter/material.dart';

class ExploreCards extends StatelessWidget {
  const ExploreCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Image.asset('assets/images/img1.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(26.5),
            child: Text(
              'Agriculural equipment',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Color(0xffF2F3F2),
        border: Border.all(width: 1, color: kGreenColor),
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
