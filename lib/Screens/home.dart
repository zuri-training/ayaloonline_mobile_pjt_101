import 'package:ayalo_mobile_pjt101/Custom_widgets/bottom_navbar.dart';
import 'package:ayalo_mobile_pjt101/Screens/cart_screen.dart';
import 'package:ayalo_mobile_pjt101/Screens/explore_screen.dart';
import 'package:ayalo_mobile_pjt101/Screens/Profile/profile_screen.dart';
import 'package:ayalo_mobile_pjt101/components/alerts.dart';
import 'package:ayalo_mobile_pjt101/components/container_selector.dart';
import 'package:ayalo_mobile_pjt101/components/search.dart';
import 'package:ayalo_mobile_pjt101/constants/colors.dart';
import 'package:ayalo_mobile_pjt101/services/card_service.dart';
import 'package:ayalo_mobile_pjt101/state_manager/home_toggle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  static String id = 'Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final indexState = Provider.of<HomePageIndex>(context);
    int index = Provider.of<HomePageIndex>(context).index;
    Widget toggle() {
      if (index == 1) {
        return ExploreListScreen();
      } else if (index == 2) {
        return CartListScreen();
      } else if (index == 3) {
        return ProfileHome();
      } else {
        return HomeScreen();
      }
    }

    return Scaffold(
        bottomNavigationBar: Container(
          height: 75,
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
            children: [
              GestureDetector(
                onTap: () {
                  indexState.setIndex(0);
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.store,
                        color: index == 0 ? kGreenColor : Colors.black,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 12,
                          color: index == 0 ? kGreenColor : Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  indexState.setIndex(1);
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.searchengin,
                        color: index == 1 ? kGreenColor : Colors.black,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Explore',
                        style: TextStyle(
                          fontSize: 12,
                          color: index == 1 ? kGreenColor : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  indexState.setIndex(2);
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.shoppingCart,
                        color: index == 2 ? kGreenColor : Colors.black,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Cart',
                        style: TextStyle(
                          fontSize: 12,
                          color: index == 2 ? kGreenColor : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  indexState.setIndex(3);
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.userCircle,
                        color: index == 3 ? kGreenColor : Colors.black,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Account',
                        style: TextStyle(
                          fontSize: 12,
                          color: index == 3 ? kGreenColor : Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(),
        body: SafeArea(
          child: toggle(),
        ));
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
