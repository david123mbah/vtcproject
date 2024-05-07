import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:testproject/features/visitors/rejected_page.dart';
import 'package:testproject/features/visitors/review_page.dart';
import 'package:testproject/utils/constants/colors.dart';
import 'package:testproject/utils/constants/image_strings.dart';
import 'package:testproject/utils/helpers/helper_functions.dart';

class VisitorScreen extends StatefulWidget {
  const VisitorScreen({super.key});

  @override
  State<VisitorScreen> createState() => _VisitorScreenState();
}

class _VisitorScreenState extends State<VisitorScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(244, 245, 246, 1),
        appBar: VisitorAppBar(),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: Column(
                  children: [
                    VisitorCard(
                      date: '02 May,2024',
                      time: '10:00am',
                      image: TImages.onBoardingImage1,
                      name: "Sarah Bold",
                      bookingID: "Booking ID: DK463SA34",
                      minutes: "30 mins",
                      isUpcoming: true,
                    ),
                    VisitorCard(
                      date: '02 May,2024',
                      time: '10:00am',
                      image: TImages.onBoardingImage1,
                      name: "Mfon Edet",
                      bookingID: "Booking ID: DK463SA34",
                      minutes: "30 mins",
                      isUpcoming: true,
                    )
                  ],
                ),
              ),
            ),

            // PAGE 2
            SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: Column(
                  children: [
                    VisitorCard(
                      date: '02 May,2024',
                      time: '10:00am',
                      image: TImages.onBoardingImage1,
                      name: "Sarah Bold",
                      bookingID: "Booking ID: DK463SA34",
                      minutes: "30 mins",
                      isUpcoming: false,
                      isAccepted: true,
                    ),
                    VisitorCard(
                      date: '02 May,2024',
                      time: '10:00am',
                      image: TImages.onBoardingImage1,
                      name: "Mfon Edet",
                      bookingID: "Booking ID: DK463SA34",
                      minutes: "30 mins",
                      isAccepted: true,
                      isUpcoming: false,
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: Column(
                  children: [
                    VisitorCard(
                      date: '02 May,2024',
                      time: '10:00am',
                      image: TImages.onBoardingImage1,
                      name: "Sarah Bold",
                      bookingID: "Booking ID: DK463SA34",
                      minutes: "30 mins",
                      isUpcoming: false,
                      isRejected: true,
                      reason: "Emergency Meeting",
                    ),
                    VisitorCard(
                      date: '02 May,2024',
                      time: '10:00am',
                      image: TImages.onBoardingImage1,
                      name: "Mfon Edet",
                      bookingID: "Booking ID: DK463SA34",
                      minutes: "30 mins",
                      isUpcoming: false,
                      isRejected: true,
                      reason: "Poor Weather Condition",
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VisitorCard extends StatelessWidget {
  const VisitorCard({
    super.key,
    this.isUpcoming = false,
    this.isAccepted = false,
    this.isRejected = false,
    required this.date,
    required this.time,
    required this.name,
    required this.bookingID,
    required this.minutes,
    required this.image,
    this.reason,
  });
  final bool? isUpcoming;

  final bool? isAccepted;
  final bool? isRejected;
  final String date;
  final String time;
  final String name;
  final String? reason;
  final String bookingID;
  final String minutes;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 1,
                spreadRadius: 1,
                offset: Offset(1, 1))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              TextIcon(
                  space: 2,
                  icon: Iconsax.calendar,
                  title: date,
                  style: Theme.of(context).textTheme.labelSmall),
              TextIcon(
                space: 2,
                icon: Iconsax.clock,
                title: time,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              isUpcoming!
                  ? Container(
                      margin: EdgeInsets.only(left: 15, right: 8, top: 7),
                      child: Text("remind me",
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(fontSize: 10, color: Colors.grey)),
                    )
                  : SizedBox(),
              isUpcoming!
                  ? Expanded(
                      child: Transform.scale(
                        scale: 0.8,
                        child: Switch(
                          // thumb color (round icon)
                          activeColor: Colors.white,
                          activeTrackColor: Colors.blue,
                          inactiveThumbColor: Colors.black,
                          inactiveTrackColor: Colors.grey.shade400,
                          splashRadius: 50.0,

                          // boolean variable value
                          value: false,
                          // changes the state of the switch
                          onChanged: (value) => print(""),
                        ),
                      ),
                    )
                  : SizedBox(),
            ],
          ),
          Divider(
            height: 30,
            color: Color.fromRGBO(222, 217, 217, 1),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(
                              image,
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  left: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextIcon(
                          icon: Iconsax.user,
                          title: name,
                          style: Theme.of(context).textTheme.headlineSmall),
                      TextIcon(
                          icon: Iconsax.book,
                          title: bookingID,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(color: Colors.grey)),
                      TextIcon(
                          icon: Iconsax.clock,
                          title: minutes,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(color: Colors.grey)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 30,
            color: Color.fromRGBO(222, 217, 217, 1),
          ),
          isUpcoming!
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 140,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromRGBO(22, 219, 204, 1))),
                          onPressed: () {

                            Get.to(()=> RejectedScreen());
                          },
                          child: Text("Reject"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 140,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Accept"),
                        ),
                      ),
                    )
                  ],
                )
              : SizedBox(),
          isAccepted!
              ? SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => ReviewScreen());
                    },
                    child: Text("Add Review"),
                  ),
                )
              : SizedBox(),
          isRejected! ? Text("Reason : $reason") : SizedBox()
        ],
      ),
    );
  }
}

class TextIcon extends StatelessWidget {
  const TextIcon({
    super.key,
    required this.icon,
    required this.title,
    this.style,
    this.space = 10,
  });
  final IconData icon;
  final String title;
  final TextStyle? style;
  final double? space;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 5, top: 5),
        child: Row(
          children: [
            SizedBox(
              width: space,
            ),
            Icon(
              icon,
              color: Colors.blue,
            ),
            SizedBox(
              width: space,
            ),
            Text(
              title,
              style: style,
            ),
          ],
        ));
  }
}

class VisitorAppBar extends StatelessWidget implements PreferredSizeWidget {
  const VisitorAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Column(children: [
        Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Iconsax.arrow_left)),
                Container(
                    width: 0.7 * MediaQuery.of(context).size.width,
                    child: Center(
                        child: Text(
                      "My Visitors",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ))),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                    hoverColor: Colors.blue,
                    prefixIcon: Icon(Iconsax.search_favorite),
                    suffixIcon: Icon(
                      Iconsax.setting_2,
                      color: Colors.blue,
                    )),
              ),
            )
          ],
        ),
        TabBar(
          labelColor: Color.fromRGBO(22, 219, 204, 1),
          indicatorColor: Color.fromRGBO(22, 219, 204, 1),
          tabs: [
            Tab(
              text: "Upcoming",
            ),
            Tab(text: "Completed"),
            Tab(text: "Rejected"),
          ],
        ),
      ]),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(0.20 * THelperFunctions.screenHeight());
}
