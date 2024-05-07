import 'package:flutter/material.dart';
import 'package:testproject/features/authentication/screens/login/login.dart';
import 'package:testproject/utils/constants/colors.dart';

import '../../../../utils/constants/text_strings.dart';

import '../../../../utils/constants/image_strings.dart';

class UserSelectionScreen extends StatelessWidget {
  const UserSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height / 1.8,
              child: Image.asset(
                TImages.onBoardingImage1,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen(userType: 'admin',)));
                },
                child: Text(TTexts.admin),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen(userType: 'staff',)));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(TColors.white)),
                child: Text(
                  TTexts.staff,
                  style: TextStyle(color: TColors.primary),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
