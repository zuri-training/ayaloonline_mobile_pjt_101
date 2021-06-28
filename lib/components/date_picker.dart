import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DateComponent extends StatelessWidget {
  final String header;
  VoidCallback datePickerFuntion;
  String initialValue;
  Widget icon;
  DateComponent(
      {required this.datePickerFuntion,
      required this.header,
      required this.initialValue,
      required this.icon});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            header,
            style: TextStyle(
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0, left: 15),
              child: SizedBox(
                width: 100,
                child: GestureDetector(
                    child: Text(
                      initialValue,
                      style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: datePickerFuntion),
              ),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 20.0), child: icon)
          ],
        )
      ],
    );
  }
}
