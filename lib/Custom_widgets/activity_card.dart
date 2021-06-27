import 'package:ayalo_mobile_pjt101/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityCard extends StatelessWidget {
  final String status;
  final String name;
  final String quantity;
  final String price;
  const ActivityCard(
      {required this.status,
      required this.name,
      required this.quantity,
      required this.price});

  @override
  Widget build(BuildContext context) {
    Widget getStatus(String inputStatus) {
      if (status == 'Shipped' || status == 'shipped') {
        return ActivityStatus(
            status: 'Shipped',
            bColor: Color(0x25FFC107),
            stringColor: Color(0xffFFC107));
      } else if (status == 'Returned' || status == 'returned') {
        return ActivityStatus(
            status: 'Returned',
            bColor: Color(0x2555ACEE),
            stringColor: Color(0xff55ACEE));
      } else {
        return ActivityStatus(
            status: 'Pending',
            bColor: Color(0x25E80E00),
            stringColor: Color(0xffE80E00));
      }
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Image.asset(
                      'assets/images/img1.png',
                      width: 100,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          'Tractor',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'SKU- #AYA110200',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '1 week ago',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Text(
                        'N$price',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 22.0),
                        child: Icon(FontAwesomeIcons.ellipsisV),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                getStatus(status),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Center(
                        child: Text(
                          name,
                          style: TextStyle(
                              color: Color(0xff53B175),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0x2553B175),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Center(
                        child: Text(
                          'Qty - $quantity',
                          style: TextStyle(
                              color: Color(0xffF79423),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0x25F79423),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        height: 150,
        decoration: BoxDecoration(
          color: Color(0xffF2F3F2),
          border: Border.all(width: 1, color: kGreenColor),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}

class ActivityStatus extends StatelessWidget {
  final String status;
  final Color stringColor;
  final Color bColor;
  const ActivityStatus(
      {required this.status, required this.bColor, required this.stringColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Center(
              child: Text(
                status,
                style:
                    TextStyle(color: stringColor, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: bColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
