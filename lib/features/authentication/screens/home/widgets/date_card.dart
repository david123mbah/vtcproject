
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class DateCard extends StatelessWidget {
  const DateCard({
    super.key,
    required this.date,
    required this.day,
  });
  final String date;
  final String day;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(date),
          Text(day),
        ],
      ),
      height: 0,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: TColors.white.withOpacity(0.8),
          boxShadow: [
            BoxShadow(
                offset: Offset(3, 3),
                blurRadius: 3,
                spreadRadius: 1,
                color: TColors.grey),
          ]),
    );
  }
}