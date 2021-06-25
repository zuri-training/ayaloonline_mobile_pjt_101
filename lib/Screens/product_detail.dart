import 'package:ayalo_mobile_pjt101/Custom_widgets/custom_button.dart';
import 'package:ayalo_mobile_pjt101/components/cart_card.dart';
import 'package:ayalo_mobile_pjt101/components/date_picker.dart';
import 'package:ayalo_mobile_pjt101/constants/colors.dart';
import 'package:ayalo_mobile_pjt101/state_manager/profile_detail_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    void presentDatePicker() async {
      // showDatePicker is a pre-made funtion of Flutter
      await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2030))
          .then((pickedDate) {
        // Check if no date is selected
        if (pickedDate != null) {
          return Provider.of<ProfileDetailDateState>(context, listen: false)
              .setDate(pickedDate);
        }
      });
    }

    void presentTImePicker() async {
      await showTimePicker(context: context, initialTime: TimeOfDay.now())
          .then((pickedTime) {
        if (pickedTime != null) {
          print(pickedTime);
          Provider.of<ProfileDetailTimeSelection>(context, listen: false)
              .setTime(pickedTime);
        }
      });
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: FittedBox(
                    child: Image.asset('assets/images/img1.png'),
                  ),
                  height: 400,
                  decoration: BoxDecoration(
                    color: Color(0xffF2F3F2),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tractor',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Gilroy',
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Leased By: Makoko LTD ',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Gilroy',
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.solidStar,
                                      color: Color(0xffF3603F),
                                      size: 17,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.solidStar,
                                      color: Color(0xffF3603F),
                                      size: 17,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.solidStar,
                                      color: Color(0xffF3603F),
                                      size: 17,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'N24000',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Gilroy',
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: AdditionButton(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Divider(thickness: 0.5, height: 0.5),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          DateComponent(
                            icon: Icon(
                              FontAwesomeIcons.calendar,
                              size: 19,
                            ),
                            initialValue:
                                Provider.of<ProfileDetailDateState>(context)
                                    .dateSelected,
                            datePickerFuntion: () => presentDatePicker(),
                            header: 'Rent Date',
                          ),
                          Divider(thickness: 0.5, height: 0.5),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15.0, left: 15, top: 13),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rent Duration',
                                  style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        icon: Container(),
                                        value: Provider.of<
                                                    ProfileDetailDaysSelection>(
                                                context)
                                            .getDays,
                                        items: <String>[
                                          '1 Day',
                                          '2 Days',
                                          '3 Days',
                                          '4 Days',
                                        ].map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: new Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          Provider.of<ProfileDetailDaysSelection>(
                                                  context,
                                                  listen: false)
                                              .setDays(value.toString());
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Icon(FontAwesomeIcons.angleDown)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(thickness: 0.5, height: 0.5),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          DateComponent(
                              icon: Icon(FontAwesomeIcons.angleDown),
                              datePickerFuntion: () => presentTImePicker(),
                              header: 'Rent Time',
                              initialValue:
                                  Provider.of<ProfileDetailTimeSelection>(
                                          context,
                                          listen: false)
                                      .getTime(context)),
                          Divider(thickness: 0.5, height: 0.5),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15.0, left: 15, top: 13),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Delivery Method',
                                  style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        icon: Container(),
                                        value:
                                            Provider.of<ProfileDetailDelivery>(
                                                    context,
                                                    listen: false)
                                                .getDelivery,
                                        items: <String>[
                                          'Door Delivery',
                                          'Pickup',
                                        ].map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: new Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          Provider.of<ProfileDetailDelivery>(
                                                  context,
                                                  listen: false)
                                              .setDelivery(value.toString());
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Icon(FontAwesomeIcons.angleDown)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(thickness: 0.5, height: 0.5),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AyaloCustomButton(context,
                      text: 'Rent Equipment', onPressed: () {}),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
