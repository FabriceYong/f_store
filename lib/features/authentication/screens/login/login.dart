import 'package:f_store/common/styles/spacing_styles.dart';
import 'package:f_store/common/widgets/login_signup/form_divider.dart';
import 'package:f_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:f_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:f_store/common/widgets/login_signup/social_buttons.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: FSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              const FLoginHeader(),

              /// Form
              const FLoginForm(),

              /// Divider
              FFormDivider(
                dividerText: FTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: FSizes.spaceBetweenSections,
              ),

              /// Footer
              const FSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
