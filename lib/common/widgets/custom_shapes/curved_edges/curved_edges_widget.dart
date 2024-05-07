
import 'package:flutter/material.dart';
import 'package:testproject/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class FBCurvedEdgesWidget extends StatelessWidget {
  const FBCurvedEdgesWidget({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: CurvedEdges(), child: child);
  }
}
