import 'package:flutter/material.dart';
import 'package:vvims/config/app_styles.dart';
import 'package:vvims/constants/constants.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top * 3,
        left: kDefaultPadding,
        right: kDefaultPadding
      ),
      child: Column(
        children: [
          Text(
            "Welcome Back",
            textAlign: TextAlign.center,
            style: AppStyles.header.copyWith(color: Colors.white)
          ),
          const SizedBox(height: kDefaultPadding,),
           Text(
            "Login to your account by entering your email and password below. Happy to see you back.",
            textAlign: TextAlign.center,
            style: AppStyles.smallBodyText.copyWith(color: Colors.white)
          ),
        ],
      ),
    );
  }
}