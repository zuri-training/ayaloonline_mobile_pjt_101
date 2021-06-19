

import 'package:ayalo_mobile_pjt101/components/item_summary_card.dart';
import 'package:flutter/cupertino.dart';

class CardManager {
  final List<ItemSummaryCard> items = [];
  List<Widget> stars = [];

  List<Widget> getCards() {
    testOutCard();
    return items;
  }


  void addCard(String itemName, String leasingCompany, int numberOfStar,
      Function addToCart, String price, int starInput) async {
    items.add(ItemSummaryCard(
      itemName: itemName,
      leasingCompany: leasingCompany,
      numberOfStar: numberOfStar,
      addToCart: addToCart,
      starInput: starInput,
      price: price,
    ));
  }

  // dummy method to test out the cards
  void testOutCard() {
    addCard('Tractor', 'Kokomo LTD', 5, () {
      print('kokomo clicked');
    }, '15,000', 5);
    addCard('Tractor', 'jigawa LTD', 5, () {
      print('jigawa clicked');
    }, '12,000', 4);
    addCard('Tractor', 'Kainji LTD', 5, () {
      print('Kaija clicked');
    }, '22,000', 3);
    addCard('Tractor', 'Ekoloma LTD', 5, () {
      print('Ekoloma clicked');
    }, '32,000', 2);
  }
}
