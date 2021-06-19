import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search for equipments",
              hintStyle: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontFamily: 'Gilroy',
              ),
              suffixIcon: Icon(Icons.search_rounded),
            )),
        decoration: BoxDecoration(
          color: Color(0xffF2F3F2),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
