import 'package:flutter/material.dart';
import 'package:testproject/utils/constants/colors.dart';

class FBCircularContainer extends StatelessWidget {
  const FBCircularContainer(
      {super.key,
      this.height,
      this.width,
      this.radius = 400,
      this.padding,
      this.child,
      this.backgroundColor = TColors.textWhite,
      this.margin});
  final double? height;
  final double? width;
  final double radius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: backgroundColor),
      child: child,
    );
  }
}
