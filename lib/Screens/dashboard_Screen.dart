import 'package:ayalo_mobile_pjt101/Custom_widgets/activity_card.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/dashboard_card.dart';
import 'package:ayalo_mobile_pjt101/components/container_selector.dart';
import 'package:ayalo_mobile_pjt101/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

List<Widget> dashboardCards = [
  DashboardCard(icon: FontAwesomeIcons.server, text: 'In Stock', count: '50'),
  DashboardCard(icon: FontAwesomeIcons.file, text: 'Lease', count: '30'),
  DashboardCard(icon: FontAwesomeIcons.tools, text: 'Lease', count: '30'),
  DashboardCard(
      icon: FontAwesomeIcons.facebookMessenger, text: 'Reviews', count: '14'),
];

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            GridView.count(
              childAspectRatio: 1.6,
              children: [
                DashboardCard(
                    icon: FontAwesomeIcons.server,
                    text: 'In Stock',
                    count: '50'),
                DashboardCard(
                    icon: FontAwesomeIcons.file, text: 'Lease', count: '30'),
                DashboardCard(
                    icon: FontAwesomeIcons.tools, text: 'Lease', count: '30'),
                DashboardCard(
                    icon: FontAwesomeIcons.commentAlt,
                    text: 'Reviews',
                    count: '14'),
              ],
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
            CategorySelector(name: 'Rent Statistics', onPress: () {}),
            SizedBox(
              height: 180,
            ),
            CategorySelector(name: 'New Orders', onPress: () {}),
            ActivityCard(
              price: '50,000',
              name: 'Ahmed Kunle',
              quantity: '5',
              status: 'pending',
            ),
            ActivityCard(
              price: '7,500',
              name: 'Dayo Olaniyi',
              quantity: '4',
              status: 'Returned',
            ),
            ActivityCard(
              price: '200,000',
              name: 'Obinna Chigozie',
              quantity: '2',
              status: 'shipped',
            ),
          ]),
        ),
      ),
    );
  }
}

// class SalesData {
//   SalesData(this.year, this.sales, this.segmentColor);
//   final String year;
//   final double sales;
//   final Color segmentColor;
// }
