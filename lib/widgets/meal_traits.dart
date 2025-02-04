import 'package:flutter/material.dart';


class MealTraits extends StatelessWidget {
  const MealTraits({super.key, required this.icon, required this.lable});

  final IconData icon;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        icon,
        size: 20,
        color: Colors.white,
      ),
      SizedBox(
        width: 6,
      ),
      Text(
        lable,
        style: TextStyle(color: Colors.white),
      ),
    ]);
  }
}
