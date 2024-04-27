import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class FRatingProgressIndicator extends StatelessWidget {
  const FRatingProgressIndicator(
      {super.key, required this.text, required this.value});

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: FDeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value,
              backgroundColor: FColors.grey,
              minHeight: 11,
              borderRadius: BorderRadius.circular(7),
              valueColor: const AlwaysStoppedAnimation(FColors.primary),
            ),
          ),
        )
      ],
    );
  }
}
