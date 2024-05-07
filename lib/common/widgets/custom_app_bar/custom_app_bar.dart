
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/device/device_utility.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
                child: Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(TImages.user)),
                  border: Border.all(width: 3,color: Colors.white),
                  borderRadius: BorderRadius.circular(35),
                  color: TColors.primary),
            )),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Moriah Aimes",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "Development Manager",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: InkWell(
              child: Icon(Iconsax.scan_barcode),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          const Expanded(
            // flex: 1,
            child: InkWell(
              child: Icon(Iconsax.notification),
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(TDeviceUtils.getAppBarHeight()+20);
}
