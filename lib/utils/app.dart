import 'package:f_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:f_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: FAppTheme.lightTheme,
        darkTheme: FAppTheme.dartTheme,
        home: const OnBoardingScreen());
  }
}
