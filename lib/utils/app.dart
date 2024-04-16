import 'package:f_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: FAppTheme.lightTheme,
      darkTheme: FAppTheme.dartTheme,
      home: const Scaffold(
        body: Center(
          child: Text(
            'Hello World!',
            style:
                TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }
}
