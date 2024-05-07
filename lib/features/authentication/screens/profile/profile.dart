// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: const DecorationImage(fit: BoxFit.contain,
                            image: AssetImage(TImages.user,)),
                        border: Border.all(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.circular(100),
                        color: TColors.primary),
                  ),
                  Positioned(
                    top: 60,
                    right:-10,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Iconsax.edit,
                          color: TColors.primary,
                        )),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Moriah Aimes",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Active",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                  
                      SizedBox(height: 15,),
                  ProfileCard(
                    icon: Iconsax.user,
                    title: 'Your Profile',
                  ),
                  ProfileCard(
                    icon: Iconsax.setting,
                    title: 'Setings',
                  ),
                  ProfileCard(
                    icon: Iconsax.timer,
                    title: 'Help Center',
                  ),
                  ProfileCard(
                    icon: Iconsax.security,
                    title: 'Privacy Policy',
                  ),
                  ProfileCard(
                    icon: Iconsax.logout,
                    title: 'Log Out',
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: TColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(1, 1),
                spreadRadius: 0.5,
                blurRadius: 0.3)
          ]),
      child: ListTile(
          leading: Icon(
            icon,
            color: TColors.primary,
          ),
          title: Text(
            title,
          ),
          trailing: Icon(Iconsax.arrow_right)),
    );
  }
}
