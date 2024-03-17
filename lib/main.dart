import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memoscan/utils/theme_classe.dart';

import 'pages/proches/bio_defunt_controller.dart';
import 'pages/proches/photo_defunt_controller.dart';
import 'pages/proches/photo_profil_defunt_controller.dart';
import 'pages/proches/proche_controller.dart';
import 'pages/proches/video_defunt_controller.dart';
import 'pages/profil/profil.dart';
import 'pages/profil/profil2.dart';
import 'pages/splash.dart';

void main() async {
  //
  ProcheController procheController = Get.put(ProcheController());
  VideoDefuntController videoDefuntController =
      Get.put(VideoDefuntController());
  //
  PhotoDefuntController photoDefuntController =
      Get.put(PhotoDefuntController());
  //
  PhotoProfileDefuntController photoProfileDefuntController =
      Get.put(PhotoProfileDefuntController());
  //
  BioDefuntController bioDefuntController = Get.put(BioDefuntController());
  //
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MEMOSCAN',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: ThemeClass.darkTheme,
      theme: ThemeClass.lightTheme,
      home:
          //Profil2({})
          //Profil()
          Splash(),
    );
  }
}
