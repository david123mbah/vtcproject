import 'package:flutter/material.dart';
import 'package:vvims/config/app_styles.dart';
import 'package:vvims/constants/constants.dart';

import 'dot_indicator.dart';


class FirstOnboardContent extends StatelessWidget {
  const FirstOnboardContent({
    super.key,
    required this.position
  });
  final int position;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 3,),
            Image.asset("assets/images/logo.png"),
            //const SizedBox(height: kDefaultPadding,),
            Text(
              "Visitor & Vehicle information Management System",
              textAlign: TextAlign.center,
              style: AppStyles.smallBodyText.copyWith(color: Colors.white,)
            ),
            const Spacer(flex: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => DotIndicator(isActive: index == position),
              ),
            ),
            const Spacer(flex: 1,),
            
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                 child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.70),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: kWhiteColor.withOpacity(0.65),
                      width: 1
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.language, color: kWhiteColor,),
                     // Matrix4.rotationX(radians)
                      const Text("Select Language",
                        style: TextStyle(
                          color: kWhiteColor,
                        ),
                      ),
                      Transform(
                        transform: Matrix4.identity()..rotateZ(4.75),
                        alignment: Alignment.center,
                        origin: const Offset(0, -6),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: kWhiteColor,
                        ),
                      ),
                 
                    ],
                  ),
                               ),
               ),

            const Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}