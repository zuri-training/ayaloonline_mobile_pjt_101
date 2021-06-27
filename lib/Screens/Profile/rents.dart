import '../../Custom_widgets/my_rent_card.dart';
import 'package:flutter/material.dart';

class RentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyRentCard(),
          )
        ],
      ),
    ));
  }
}
