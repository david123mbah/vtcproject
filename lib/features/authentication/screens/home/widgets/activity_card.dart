
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    super.key,
    required this.title,
    required this.date,
    required this.time,
    required this.task,
    required this.icon,
  });
  final String title;
  final String date;

  final String time;
  final String task;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: TColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(3, 3),
                spreadRadius: 1,
                blurRadius: 1)
          ]),
      child: ListTile(
        leading: Container(
            child: Icon(
          icon,
          color: TColors.primary,
        )),
        title: Text(
          title,
        ),
        subtitle: Text(date),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              time,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              task,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}