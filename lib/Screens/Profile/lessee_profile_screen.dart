// import 'package:ayalo_mobile_pjt101/Custom_widgets/bottom_navbar.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/custom_button.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/profile_list_tile.dart';
import 'package:ayalo_mobile_pjt101/Screens/Profile/address.dart';
import 'package:ayalo_mobile_pjt101/Screens/Profile/change_password.dart';
import 'package:ayalo_mobile_pjt101/Screens/Profile/delivery.dart';
import 'package:ayalo_mobile_pjt101/Screens/Profile/profile.dart';
// import 'package:ayalo_mobile_pjt101/Screens/Profile/rents.dart';
import 'package:ayalo_mobile_pjt101/Screens/Profile/verification.dart';
// import 'package:ayalo_mobile_pjt101/constants/colors.dart';
import 'package:ayalo_mobile_pjt101/state_manager/log_status.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../my_equipment.dart';

class LesseeProfileHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logStatus = Provider.of<LogStatus>(context);
    return Material(
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 100, horizontal: 14.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 12.0),
                          width: 74,
                          height: 74,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade300),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Click Profile'),
                            Text('LESSEE-0000E')
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(thickness: 0.5, height: 0.5),
                  ProfileListTile(
                    icon: Icons.person_pin,
                    title: 'Profile Details',
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Profile(),
                      ),
                    ),
                  ),
                  Divider(thickness: 0.5, height: 0.5),
                  ProfileListTile(
                    icon: Icons.shopping_cart_outlined,
                    title: 'My Equipments/Prices',
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MyEquipments(),
                      ),
                    ),
                  ),
                  Divider(thickness: 0.5, height: 0.5),
                  ProfileListTile(
                    icon: Icons.verified_outlined,
                    title: 'Verification',
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Verification(),
                      ),
                    ),
                  ),
                  Divider(thickness: 0.5, height: 0.5),
                  ProfileListTile(
                    icon: Icons.lock_outlined,
                    title: 'Change Password',
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ChangePassword(),
                      ),
                    ),
                  ),
                  Divider(thickness: 0.5, height: 0.5),
                  ProfileListTile(
                    icon: FontAwesomeIcons.moneyBill,
                    title: 'Click for Payments',
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Payments(),
                      ),
                    ),
                  ),
                  Divider(thickness: 0.5, height: 0.5),
                  ProfileListTile(
                    icon: Icons.notifications_none_outlined,
                    title: 'Notification',
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AddressScreen(),
                      ),
                    ),
                  ),
                  Divider(thickness: 0.5, height: 0.5),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 50),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 24),
                      AyaloCustomButton(
                        context,
                        text: 'Logout',
                        color: Theme.of(context).backgroundColor,
                        onPressed: () => logStatus.loggedIn(false),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
