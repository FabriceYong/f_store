import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/constants/text_strings.dart';
import 'package:f_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FTermsAndConditionsCheckbox extends StatelessWidget {
  const FTermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (value) {},
        ),
        const SizedBox(
          height: FSizes.spaceBetweenItems,
        ),
        Flexible(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: '${FTexts.iAgreeTo} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                  text: '${FTexts.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? FColors.white : FColors.primary,
                      ),
                ),
                TextSpan(
                  text: '${FTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: FTexts.termsOfUser,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? FColors.white : FColors.primary,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
