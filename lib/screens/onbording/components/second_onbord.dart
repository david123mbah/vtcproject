import 'package:flutter/material.dart';
import 'package:vvims/Navs/home_page.dart';
import 'package:vvims/config/app_styles.dart';
import 'package:vvims/constants/constants.dart';
import 'package:vvims/screens/auth/login.dart';

import 'dot_indicator.dart';

class SecondOnboardContent extends StatelessWidget {
  const SecondOnboardContent({super.key, required this.position});
  final int position;

  @override
  Widget build(BuildContext context) {
    var buttonStyle = ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: const BorderSide(color: kSecondaryColor, width: 1.0),
        ),
      ),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.all(0)),
      iconColor: MaterialStateColor.resolveWith((states) {
        if (states.contains(MaterialState.pressed)) {
          return kSecondaryColor;
        } else {
          return kSecondaryColor;
        }
      }),
    );
    return Scaffold(
        // backgroundColor: kPrimaryColor,
        body: Column(
      children: [
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 
                  0.12,), //kDefaultPadding * 2),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset("assets/images/1.png"),
            
          ),
           
        ), 
     const   Padding(
          padding:  EdgeInsets.symmetric(vertical: 83),
          child:  SizedBox(height: 26),
        ),
        ElevatedButton(
            onPressed: () {
              // Add your login button logic here
                 Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Homepage()),
                          );
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 41, 81, 183),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: const SizedBox(
              width: 330,
              height: 74,
              child: Center(
                child: Text(
                  "Admin",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ),
            const SizedBox(height: 46),
            ElevatedButton(
            onPressed: () {
              // Add your login button logic here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Color.fromARGB(255, 20, 80, 209),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: const SizedBox(
              width: 330,
              height: 74,
              child: Center(
                child: Text(
                  "Staff",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ),
        const Spacer(),
      ],
    ));
  }
}
