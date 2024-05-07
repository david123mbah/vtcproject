import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:testproject/features/authentication/screens/Onboarding/Onboarding.dart';
import 'package:testproject/features/authentication/screens/user_selection/user_selection.dart';
import 'package:testproject/navigation_menu.dart';

import 'package:testproject/utils/theme/theme.dart';
import 'package:testproject/features/authentication/screens/login/login.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        home: const SplashScreen());
  }
}
