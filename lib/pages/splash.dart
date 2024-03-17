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
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: Get.size.height / 3,
                width: Get.size.width / 1.5,
                decoration: const BoxDecoration(
                  //color: Colors.blue,
                  image: DecorationImage(
                    image: ExactAssetImage("assets/logo.png"),
                  ),
                ),
                alignment: Alignment.center,
                //child: Image.asset("assets/logo.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
  //
}
