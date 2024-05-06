import 'package:flutter/material.dart';
import 'package:vvims/config/app_colors.dart';
import 'package:vvims/config/app_styles.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: const Color(0xffDFDDDD).withOpacity(0.2),
        appBar: AppBar(
          toolbarHeight: 5,
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            padding: EdgeInsets.zero,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xff7B9CF6),
              Color(0xff184AD2),
            ])),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                height: 100,
                decoration: BoxDecoration(
                    color: AppColors.blue,
                    gradient: const LinearGradient(colors: [
                      Color(0xff7B9CF6),
                      Color(0xff184AD2),
                    ])
                    // #7B9CF6
                    ),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 25,
                          color: AppColors.white,
                        )),
                    Expanded(
                      child: Center(
                        child: Text("Settings",
                            style: AppStyles.header.copyWith(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors
                      .white, // Assuming AppColors.white is a custom color
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(
                          0.1), // Assuming AppColors.grey is a custom color
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: AppColors.green.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.language,
                        color: AppColors.green,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Language",
                            style:
                                AppStyles.bodyText),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("English",
                                style: AppStyles.smallBodyText),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 25,
                              color: AppColors.black,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors
                      .white, // Assuming AppColors.white is a custom color
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(
                          0.1), // Assuming AppColors.grey is a custom color
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: AppColors.green.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.notifications,
                        color: AppColors.green,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Notification",
                            style:
                                AppStyles.bodyText),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("On",
                                style: AppStyles.smallBodyText),
                            Transform.scale(
                              scale: 0.8,
                              child: Switch.adaptive(
                                value: true,
                                onChanged: (value) {},
                                activeTrackColor: AppColors.green,
                                inactiveTrackColor: AppColors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ])));
  }
}
