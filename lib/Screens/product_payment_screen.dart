import 'package:ayalo_mobile_pjt101/Custom_widgets/custom_button.dart';
import 'package:ayalo_mobile_pjt101/Custom_widgets/input_form.dart';
import 'package:ayalo_mobile_pjt101/components/date_picker.dart';
import 'package:ayalo_mobile_pjt101/state_manager/home_toggle.dart';
import 'package:ayalo_mobile_pjt101/state_manager/profile_detail_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ProductPaymentScreen extends StatelessWidget {
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

    return Scaffold(
      appBar: AppBar(title: Text('Payment Details')),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 30),
                inputForm(
                    'Card Details', 'Card Number', Icon(Icons.credit_card)),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          DateComponent(
                            datePickerFuntion: () => presentDatePicker(),
                            header: 'Expiry Date',
                            initialValue:
                                Provider.of<ProfileDetailDateState>(context)
                                    .dateSelected,
                            icon: Icon(
                              FontAwesomeIcons.calendar,
                              size: 19,
                            ),
                          ),
                          Divider(height: 0.5, thickness: 0.5),
                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 12),
                          Text(
                            'CVV',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                            ),
                          ),
                          inputForm(null, null, null),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                inputForm('Delivery Address',
                    'enter your Delivery Address address', null),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Amount',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '24,000',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Fee',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '2,000',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Cost',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '26,000',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                AyaloCustomButton(
                  context,
                  text: 'Check Out',
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => _Done(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Done extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeIndex = Provider.of<HomePageIndex>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, -0.5),
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/confirmation.png'),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.5, 0.7),
              child: AyaloCustomButton(
                context,
                text: 'Home',
                onPressed: () {
                  var count = 0;
                  Navigator.of(context).popUntil((route) {
                    homeIndex.setIndex(0);
                    return count++ == 2;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
