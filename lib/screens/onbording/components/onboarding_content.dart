import 'package:flutter/material.dart';
import 'package:vvims/config/app_styles.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.illustration,
    required this.title,
    required this.text,
  });

  final String? illustration, title, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.12),//kDefaultPadding * 2),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(illustration!),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          title!,
          style: AppStyles.bodyText
        ),
        const SizedBox(height: 8),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.2),//kDefaultPadding * 2),
          child: Text(
            text!,
            style: AppStyles.smallBodyText
          ),
        ),
      ],
    );
  }
}