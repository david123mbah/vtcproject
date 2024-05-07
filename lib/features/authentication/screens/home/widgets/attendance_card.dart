
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class AttendanceCard extends StatelessWidget {
  const AttendanceCard({
    super.key, required this.icon, required this.title, required this.time, required this.task,
  });
final IconData icon;
final String title;
final String time;
final String task;



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon),
              Text(title),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0,top: 20),
            child: Text(
              time,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: TColors.primary,
                  ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25.0,top: 20),
              child: Text(task)),
        ],
      ),
      height: 100,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: TColors.white,
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
