import 'package:ayalo_mobile_pjt101/Custom_widgets/custom_button.dart';
import 'package:ayalo_mobile_pjt101/Screens/product_payment_screen.dart';
import 'package:ayalo_mobile_pjt101/components/cart_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CartListScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CartItem(),
                CartItem(),
                CartItem(),
                CartItem(),
                CartItem(),
                CartItem(),
                CartItem(),
                CartItem(),
                CartItem(),
                SizedBox(
                  height: 104,
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: AyaloCustomButton(
              context,
              text: 'Check Out',
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductPaymentScreen(),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
