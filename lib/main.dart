import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memoscan/utils/theme_classe.dart';

import 'pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MEMOSCAN',
      themeMode: ThemeMode.system,
      darkTheme: ThemeClass.darkTheme,
      theme: ThemeClass.lightTheme,
      home: Splash(),
    );
  }
}
