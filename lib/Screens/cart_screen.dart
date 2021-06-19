import 'package:ayalo_mobile_pjt101/Custom_widgets/bottom_navbar.dart';
import 'package:ayalo_mobile_pjt101/constants/colors.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static String id = 'CartScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomBar(
        pageId: id,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text(
              'cart screen',
              style: TextStyle(color: kGreenColor),
            ),
          ),
        ),
      ),
    );
  }
}
