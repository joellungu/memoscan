import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:memoscan/pages/accueil.dart';

class Splash extends StatelessWidget {
  //
  Splash() {
    //
    Timer(const Duration(seconds: 2), () {
      //
      Get.offAll(Accueil());
      //
    });
  }
  //
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
  //
}
