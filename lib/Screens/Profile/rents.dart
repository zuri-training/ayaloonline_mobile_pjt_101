import 'package:ayalo_mobile_pjt101/components/my_rent_card.dart';
import 'package:flutter/material.dart';

class RentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [MyRentCard()],
      ),
    ));
  }
}
