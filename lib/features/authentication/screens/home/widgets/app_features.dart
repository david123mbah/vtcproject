
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class AppFeatures extends StatelessWidget {
  const AppFeatures({
    super.key,
    this.color,
    required this.icon,
    required this.text,
  });
  final Color? color;
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.only(right: 5),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: color),
            child: Icon(
              icon,
              color: TColors.white,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: TColors.white),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    ));
  }
}