import 'package:clone_ui_basic/screens/forget_password.dart';
import 'package:clone_ui_basic/screens/intro_screen.dart';
import 'package:clone_ui_basic/screens/switch_verification.dart';
import 'package:flutter/material.dart';
import 'package:clone_ui_basic/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CAppTheme.lightTheme,
      darkTheme: CAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SwitchVerification(),
    );
  }
}
