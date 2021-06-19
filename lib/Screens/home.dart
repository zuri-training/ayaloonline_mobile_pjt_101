import 'package:ayalo_mobile_pjt101/Custom_widgets/bottom_navbar.dart';
import 'package:ayalo_mobile_pjt101/components/alerts.dart';
import 'package:ayalo_mobile_pjt101/components/container_selector.dart';
import 'package:ayalo_mobile_pjt101/components/search.dart';
import 'package:ayalo_mobile_pjt101/services/card_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static String id = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomBottomBar(
          pageId: id,
        ),
        appBar: AppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
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
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 5.0),
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
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 5.0),
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
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 5.0),
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
          ),
        ));
  }
}
