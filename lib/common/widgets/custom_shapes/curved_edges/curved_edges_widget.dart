import 'package:f_store/common/widgets/custom_shapes/curved_edges/custom_edges.dart';
import 'package:flutter/material.dart';

/// creates a container with custom curve edges at the top
class FCustomCurvedEdgesWidget extends StatelessWidget {
  const FCustomCurvedEdgesWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: FCustomCurvedEdges(), child: child);
  }
}
