import 'package:ayalo_mobile_pjt101/Custom_widgets/activity_card.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
          ],
        ),
      )),
    );
  }
}
