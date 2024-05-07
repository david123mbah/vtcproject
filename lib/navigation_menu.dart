import 'package:flutter/material.dart';
import 'package:testproject/features/authentication/screens/home/home.dart';
import 'package:testproject/features/authentication/screens/profile/profile.dart';
import 'package:testproject/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/visitors/visitor_page.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            backgroundColor: TColors.white,
            indicatorColor: TColors.white,
            height: 50.0,
            elevation: 0,
            selectedIndex: controller.currentIndex.value,
            onDestinationSelected: (index) =>
                controller.onSelectNavigationPage(index),
            destinations: const [
              NavigationDestination(
                icon: Icon(Iconsax.home),
                label: "Home",
                selectedIcon: Icon(
                  Iconsax.home,
                  color: TColors.primary,
                ),
              ),
              NavigationDestination(
                icon: Icon(Iconsax.calendar),
                label: "Attendance",
                selectedIcon: Icon(
                  Iconsax.calendar,
                  color: TColors.primary,
                ),
              ),
              NavigationDestination(
                icon: Icon(Iconsax.bookmark),
                label: "Bookings",
                selectedIcon: Icon(
                  Iconsax.bookmark,
                  color: TColors.primary,
                ),
              ),
              NavigationDestination(
                icon: Icon(Iconsax.message),
                label: "Message",
                selectedIcon: Icon(
                  Iconsax.message,
                  color: TColors.primary,
                ),
              ),
              NavigationDestination(
                icon: Icon(Iconsax.user),
                label: "Me",
                selectedIcon: Icon(
                  Iconsax.user,
                  color: TColors.primary,
                ),
              ),
            ]),
      ),
      body: Obx(() => controller.screens[controller.currentIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();
  Rx<int> currentIndex = 0.obs;

  void onSelectNavigationPage(index) {
    currentIndex.value = index;
  }

  final screens = [
    HomeScreen(),
    Container(
      color: Colors.blue,
    ),
    VisitorScreen(),
    Container(
      color: Colors.pink,
    ),
    ProfileScreen()
  ];
}
