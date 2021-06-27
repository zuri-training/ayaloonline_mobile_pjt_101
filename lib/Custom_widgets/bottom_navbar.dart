import 'package:ayalo_mobile_pjt101/constants/colors.dart';
import 'package:ayalo_mobile_pjt101/state_manager/home_toggle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeaseeBottomNavbar extends StatelessWidget {
  const LeaseeBottomNavbar({
    Key? key,
    required this.indexState,
    required this.index,
  }) : super(key: key);

  final HomePageIndex indexState;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class LeassorBottomNavbar extends StatelessWidget {
  const LeassorBottomNavbar({
    Key? key,
    required this.indexState,
    required this.index,
  }) : super(key: key);

  final HomePageIndex indexState;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    'My Rents',
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
                    FontAwesomeIcons.plus,
                    color: index == 2 ? kGreenColor : Colors.black,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Lease',
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
                    FontAwesomeIcons.chartLine,
                    color: index == 3 ? kGreenColor : Colors.black,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Activity',
                    style: TextStyle(
                      fontSize: 12,
                      color: index == 3 ? kGreenColor : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              indexState.setIndex(4);
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Icon(
                    FontAwesomeIcons.userCircle,
                    color: index == 4 ? kGreenColor : Colors.black,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Account',
                    style: TextStyle(
                      fontSize: 12,
                      color: index == 4 ? kGreenColor : Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
