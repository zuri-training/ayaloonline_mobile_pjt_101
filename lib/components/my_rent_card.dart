import 'package:ayalo_mobile_pjt101/constants/colors.dart';
import 'package:flutter/material.dart';

class MyRentCard extends StatelessWidget {
  const MyRentCard({
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  'Tractor',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'SKU- #AYA110200',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                'QTY - 5',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                ),
                child: Text(
                  'N25,000',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
            ],
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
