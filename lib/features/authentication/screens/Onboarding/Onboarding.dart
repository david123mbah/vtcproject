

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:testproject/features/authentication/screens/user_selection/user_selection.dart';
import 'package:testproject/utils/constants/colors.dart';
import 'package:testproject/utils/constants/text_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
     Future.delayed(
          Duration(seconds: 7),
          () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const UserSelectionScreen()),
            );
          },
        );
  }
  // Initial Selected Value
  String dropdownvalue = 'English';

  // List of items in our dropdown menu
  var items = [
    'English',
    'French',
    'Chinese',
    'Yoruba',
    'Igbo',
  ];
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.primary,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Stack(
          children: [
            Stack(
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.height/2-100,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      "VVIMS",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            color: TColors.white,
                          ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: -2,
                  child: Text(
                    "®",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ],
            ),
            Positioned(
               top: MediaQuery.of(context).size.height/2-20,
                    left: 0,
                    right: 0,
                   
              child: Text(
                TTexts.onBoardingTitle1,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: TColors.white, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Positioned(
               top: MediaQuery.of(context).size.height/2+100,
                
              left: MediaQuery.of(context).size.width/3,
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: ExpandingDotsEffect(
                  dotHeight: 10,
                  radius: 20,
                    dotWidth: 10,
                    dotColor: TColors.grey,
                    activeDotColor: Colors.blue),
              ),
            ),

            
            Positioned(
               top: MediaQuery.of(context).size.height/2+200,
                    left: 0,
                    right: 0,
                   
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: Colors.blue),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Iconsax.global,
                        color: TColors.white,
                      ),
                      DropdownButton(
                        hint: Text(
                          "Select Language",
                          style: TextStyle(color: TColors.white),
                        ),
                        // Initial Value
                
                        // Down Arrow Icon
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: TColors.white,
                        ),
                        // underline: null,
                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                            ),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
