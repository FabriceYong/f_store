import 'package:f_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:f_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:f_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FPrimaryHeaderContainer extends StatelessWidget {
  const FPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FCustomCurvedEdgesWidget(
      child: Container(
        padding: const EdgeInsets.all(0),
        color: FColors.primary,
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: FCircularContainer(
                  backgroundColor: FColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: FCircularContainer(
                    backgroundColor: FColors.textWhite.withOpacity(0.2)),
              ),
              child,
            ],
              
          ),
        ),
      ),
    );
  }
}
