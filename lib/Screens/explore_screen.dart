import 'package:ayalo_mobile_pjt101/Custom_widgets/bottom_navbar.dart';
import 'package:ayalo_mobile_pjt101/constants/colors.dart';
import 'package:flutter/material.dart';

// class ExploreScreen extends StatelessWidget {
//   static String id = "ExploreScreen";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: CustomBottomBar(
//         pageId: id,
//       ),
//       body: ExploreListScreen(),
//     );
//   }
// }

class ExploreListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Explore screen',
          style: TextStyle(color: kGreenColor),
        ),
      ),
    );
  }
}
