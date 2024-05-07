
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:testproject/features/authentication/screens/home/widgets/app_features.dart';

import '../../../../../utils/constants/colors.dart';

class AppFeatureRow extends StatelessWidget {
  const AppFeatureRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // height: 100,
      decoration: BoxDecoration(
          color: TColors.primary, borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            AppFeatures(
              icon: Iconsax.direct,
              text: 'Staff Directory',
              color: Color.fromARGB(255, 4, 59, 104),
            ),
            AppFeatures(
              icon: Iconsax.people,
              text: "Visitors management",
              color: Colors.pink,
            ),
            AppFeatures(
              icon: Iconsax.calendar1,
              text: "leaves",
              color: Color.fromARGB(255, 0, 228, 118),
            ),
            AppFeatures(
              icon: Iconsax.check,
              text: "Permission",
              color: Colors.purple,
            ),
            AppFeatures(
              icon: Iconsax.note,
              text: "Notes & Feedback",
              color: Colors.brown,
            )
          ],
        ),
      ),
    );
  }
}