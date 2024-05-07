import 'package:flutter/material.dart';
import 'package:testproject/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:testproject/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:testproject/utils/constants/colors.dart';

class FBPrimaryHeaderContainer extends StatelessWidget {
  const FBPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return FBCurvedEdgesWidget(
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 300,
          child: Stack(children: [
                        child
          ]),
        ),
      ),
    );
  }
}
