import 'package:ayalo_mobile_pjt101/Custom_widgets/bottom_navbar.dart';
import 'package:ayalo_mobile_pjt101/Screens/Profile/rents.dart';
import 'package:ayalo_mobile_pjt101/Screens/activity.dart';
import 'package:ayalo_mobile_pjt101/Screens/add_lease_screen.dart';
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
    bool isleasor = Provider.of<IsLeasor>(context).isLeassor;
    Widget toggle() {
      if (index == 1 && !isleasor) {
        return ExploreListScreen();
      } else if (index == 2 && !isleasor) {
        return CartListScreen();
      } else if (index == 3 && !isleasor) {
        return ProfileHome();
      } else if (index == 1 && isleasor) {
        return RentScreen();
      } else if (index == 2 && isleasor) {
        return AddNewLeaseScreen();
      } else if (index == 3 && isleasor) {
        return ActivityScreen();
      } else if (index == 4) {
        return ProfileHome();
      } else {
        return HomeScreen();
      }
    }

    return Scaffold(
        bottomNavigationBar: Provider.of<IsLeasor>(context).isLeassor
            ? LeassorBottomNavbar(indexState: indexState, index: index)
            : LeaseeBottomNavbar(indexState: indexState, index: index),
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
