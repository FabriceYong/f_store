import 'package:f_store/common/widgets/login_signup/form_divider.dart';
import 'package:f_store/common/widgets/login_signup/social_buttons.dart';
import 'package:f_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                FTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: FSizes.spaceBetweenSections,
              ),

              /// Sigup Form
              const FSignupForm(),

              const SizedBox(
                height: FSizes.spaceBetweenSections,
              ),

              /// Divider
              FFormDivider(
                dividerText: FTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: FSizes.spaceBetweenItems,
              ),

              /// Social Buttons
              const FSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
