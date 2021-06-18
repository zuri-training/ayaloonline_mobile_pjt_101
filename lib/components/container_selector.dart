import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategorySelector extends StatelessWidget {
  final String name;
  final VoidCallback onPress;
  CategorySelector({required this.name, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: ListTile(
        leading: Text(
          name,
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Gilroy'),
        ),
        trailing: Icon(FontAwesomeIcons.angleRight),
      ),
    );
  }
}
