// import 'package:ayalo_mobile_pjt101/Screens/cart_screen.dart';
// import 'package:ayalo_mobile_pjt101/Screens/explore_screen.dart';
// import 'package:ayalo_mobile_pjt101/Screens/home.dart';
// import 'package:ayalo_mobile_pjt101/Screens/profile_screen.dart';
// import 'package:ayalo_mobile_pjt101/constants/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class CustomBottomBar extends StatefulWidget {
//   //final String pageId;
//   int index = 1;
//   CustomBottomBar({required this.index});
//
//   @override
//   _CustomBottomBarState createState() => _CustomBottomBarState();
// }
//
// class _CustomBottomBarState extends State<CustomBottomBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 75,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//                 color: Colors.grey.withOpacity(0.5),
//                 offset: Offset(0, 1),
//                 spreadRadius: 5,
//                 blurRadius: 5),
//           ],
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(30), topRight: Radius.circular(30))),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           GestureDetector(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => Home(),
//                 ),
//               );
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Column(
//                 children: [
//                   Icon(
//                     FontAwesomeIcons.store,
//                     color: index == 1 ? kGreenColor : Colors.black,
//                   ),
//                   SizedBox(
//                     height: 4,
//                   ),
//                   Text(
//                     'Home',
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: home ? kGreenColor : Colors.black,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           GestureDetector(
//             onTap: () => Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (context) => ExploreScreen(),
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Column(
//                 children: [
//                   Icon(
//                     FontAwesomeIcons.searchengin,
//                     color: explore ? kGreenColor : Colors.black,
//                   ),
//                   SizedBox(
//                     height: 4,
//                   ),
//                   Text(
//                     'Explore',
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: explore ? kGreenColor : Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           GestureDetector(
//             onTap: () => Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (context) => CartScreen(),
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Column(
//                 children: [
//                   Icon(
//                     FontAwesomeIcons.shoppingCart,
//                     color: cart ? kGreenColor : Colors.black,
//                   ),
//                   SizedBox(
//                     height: 4,
//                   ),
//                   Text(
//                     'Cart',
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: cart ? kGreenColor : Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           GestureDetector(
//             onTap: () => Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (context) => ProfileScreen(),
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Column(
//                 children: [
//                   Icon(
//                     FontAwesomeIcons.userCircle,
//                     color: account ? kGreenColor : Colors.black,
//                   ),
//                   SizedBox(
//                     height: 4,
//                   ),
//                   Text(
//                     'Account',
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: account ? kGreenColor : Colors.black,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// // int index = 1;
// // bool home = true;
// //
// // bool explore = false;
// //
// // bool cart = false;
// //
// // bool account = false;
// //
// // if (widget.pageId == 'ExploreScreen') {
// //   setState(() {
// //     home = false;
// //     explore = true;
// //     cart = false;
// //     account = false;
// //   });
// // } else if (widget.pageId == 'CartScreen') {
// //   setState(() {
// //     home = false;
// //     explore = false;
// //     cart = true;
// //     account = false;
// //   });
// // } else if (widget.pageId == 'ProfileScreen') {
// //   setState(() {
// //     home = false;
// //     explore = false;
// //     cart = false;
// //     account = true;
// //   });
// // }
