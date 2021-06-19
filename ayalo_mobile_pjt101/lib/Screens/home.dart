import 'package:ayalo_mobile_pjt101/components/alerts.dart';
import 'package:ayalo_mobile_pjt101/components/container_selector.dart';
import 'package:ayalo_mobile_pjt101/components/search.dart';
import 'package:ayalo_mobile_pjt101/services/card_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    offset: Offset(0, 1),
                    spreadRadius: 5,
                    blurRadius: 5),
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [Icon(FontAwesomeIcons.store), Text('Home')],
              ),
              Column(
                children: [Icon(FontAwesomeIcons.searchengin), Text('Home')],
              ),
              Column(
                children: [Icon(FontAwesomeIcons.shoppingCart), Text('Home')],
              ),
              Column(
                children: [Icon(FontAwesomeIcons.opera), Text('Home')],
              ),
            ],
          ),
        ),
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeSearch(),
              CompleteSignUpAlert(),
              CategorySelector(
                name: 'Best Offers',
                onPress: () {},
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 260,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                  ),
                  child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 5.0),
                        child: CardManager().getCards()[index],
                      );
                    },
                    itemCount: CardManager().getCards().length,
                  ),
                ),
              ),
              CategorySelector(
                name: 'Recently Added',
                onPress: () {},
              ),
              SizedBox(
                height: 260,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                  ),
                  child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 5.0),
                        child: CardManager().getCards()[index],
                      );
                    },
                    itemCount: CardManager().getCards().length,
                  ),
                ),
              ),
              CategorySelector(
                name: 'Audio Equipments',
                onPress: () {},
              ),
              SizedBox(
                height: 260,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                  ),
                  child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 5.0),
                        child: CardManager().getCards()[index],
                      );
                    },
                    itemCount: CardManager().getCards().length,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}

//
// BottomNavigationBar(
// selectedItemColor: kGreenColor,
// elevation: 6,
// items: const <BottomNavigationBarItem>[
// BottomNavigationBarItem(
// icon: Icon(FontAwesomeIcons.home), label: "Home"),
// BottomNavigationBarItem(
// icon: Icon(FontAwesomeIcons.productHunt), label: "Home")
// ],
// onTap: (value) {},
// ),
