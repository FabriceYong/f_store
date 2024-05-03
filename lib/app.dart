import 'package:f_store/bindings/general_bindings.dart';
import 'package:f_store/utils/constants/colors.dart';
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
      initialBinding: GeneralBindings(),
      home: const Scaffold(
        backgroundColor: FColors.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: FColors.white,
          ),
        ),
      ),
      // home: OnBoardingScreen()
    );
  }
}
