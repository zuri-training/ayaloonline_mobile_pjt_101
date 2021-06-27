import 'package:ayalo_mobile_pjt101/constants/colors.dart';
import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final String count;
  const DashboardCard(
      {required this.icon, required this.text, required this.count});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 80,
        padding: EdgeInsets.all(6),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      icon,
                      color: Color(0xff53B175),
                    ),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0x2553B175),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    text,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                )
              ],
            ),
            Center(
              child: Text(
                count,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Color(0xffF2F3F2),
          border: Border.all(width: 1, color: kGreenColor),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
