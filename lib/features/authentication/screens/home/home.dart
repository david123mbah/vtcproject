import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:testproject/features/authentication/screens/home/widgets/app_feature_row.dart';
import 'package:testproject/features/authentication/screens/home/widgets/date_card.dart';
import 'package:testproject/utils/constants/colors.dart';
import 'package:testproject/utils/constants/image_strings.dart';
import 'package:testproject/utils/constants/sizes.dart';
import 'package:testproject/utils/constants/text_strings.dart';
import 'package:testproject/utils/device/device_utility.dart';
import 'package:testproject/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/custom_app_bar/custom_app_bar.dart';
import 'widgets/activity_card.dart';
import 'widgets/attendance_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30),
        child: LayoutBuilder(builder: (context, constraints) {
          return CustomScrollView(shrinkWrap: true, slivers: [
            SliverPadding(
              sliver: SliverGrid.count(
                childAspectRatio: (1 / 0.4),
                crossAxisCount: 1,
                children: [
                  GridView.count(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    crossAxisCount: 1,
                    childAspectRatio: 0.95,
                    children: [
                      DateCard(
                        day: "Mon",
                        date: "1",
                      ),
                      DateCard(
                        day: "Tue",
                        date: "2",
                      ),
                      DateCard(
                        day: "Wed",
                        date: "3",
                      ),
                      DateCard(
                        day: "Thurs",
                        date: "4",
                      ),
                      DateCard(
                        day: "Fri",
                        date: "5",
                      ),
                      DateCard(
                        day: "Sat",
                        date: "6",
                      ),
                      DateCard(
                        day: "Mon",
                        date: "1",
                      ),
                    ],
                  )
                ],
              ),
              padding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: max((constraints.maxWidth - 1200) / 2, 0) > 15
                      ? max((constraints.maxWidth - 1200) / 2, 0)
                      : 15),
            ),
            SliverList(delegate: SliverChildListDelegate([
                    SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),
                      Text(
                        TTexts.todayAttendance,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                
            ]),),
            
                      SliverGrid.count(
                        crossAxisCount: 2,
                        childAspectRatio: 1,mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        children: [
                          AttendanceCard(icon: Iconsax.arrow,task: "Check out",time: "7:29Am",title: "Departure",),
                          AttendanceCard(icon: Iconsax.cake,task: "Errands",time: "7:49Am",title: "Arrival",),
                          AttendanceCard(icon: Iconsax.archive,task: "Check In",time: "7:49Am",title: "Arrival",),
                          
                          AttendanceCard(icon: Iconsax.archive,task: "Check In",time: "7:49Am",title: "Arrival",),
                          
                        ],
                      ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),
                      Text(
                        TTexts.appFeatures,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      AppFeatureRow(),
                      SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),
                      Text(
                        TTexts.yourActivity,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      ActivityCard(
                        time: "10:30pm",
                        task: "Arrival",
                        title: "Check In",
                        date: "May 04,2024",
                        icon: Iconsax.arrow_left,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      ActivityCard(
                        time: "1:00am",
                        task: "Arrival",
                        title: "Launch Time",
                        date: "May 04,2024",
                        icon: Iconsax.coffee,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems + 30,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(TTexts.checkIn),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ]);
        }),
      ),
    );
  }
}




