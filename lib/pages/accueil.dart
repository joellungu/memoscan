import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:memoscan/pages/proches/bio_defunt_controller.dart';
import 'package:memoscan/pages/profil/profil.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';

import 'infos/infos.dart';
import 'proches/proches.dart';
import 'profil/profile_test.dart';
import 'scanne.dart';

class Accueil extends StatelessWidget {
  //
  var box = GetStorage();
  //
  RxInt choix = 0.obs;
  //
  BioDefuntController controller = Get.find();
  //
  @override
  Widget build(BuildContext context) {
    //
    //box.erase();
    //
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("MemoScan"),
      //   centerTitle: true,
      // ),
      body: Obx(
        () => Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                //color: Colors.white,
                image: DecorationImage(
                  image: ExactAssetImage("assets/3254647.jpg"),
                  //AssetImage("assets/car.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.3, sigmaY: 0.3),
                child: Opacity(
                  opacity: 0.8,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  "MemoScan",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            choix.value == 0
                ? Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          ElevatedButton(
                            onPressed: () {
                              //
                              // Get.dialog(
                              //   Center(
                              //     child: Container(
                              //       height: 40,
                              //       width: 40,
                              //       child: const CircularProgressIndicator(),
                              //     ),
                              //   ),
                              // );
                              //
                              //Get.to(Scanne());
                              controller.scanQrCode(
                                  "b187a210-bec5-1f13-a877-6702a7509a4a");
                              //
                              //Get.to(ProfileTest({}));
                              //
                              //Get.to(Profil());
                              //
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.indigo),
                            ),
                            child: Container(
                              height: 48,
                              width: double.maxFinite,
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  // Icon(
                                  //   Icons.qr_code,
                                  // ),
                                  Text("Scanner"),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : choix.value == 1
                    ? Infos()
                    : Proches(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: Colors.indigo.shade700,
          //backgroundColor: Colors.green,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w900,
          ),
          onTap: (e) {
            //
            choix.value = e;
          },
          currentIndex: choix.value,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                  //color: Colors.white,
                  image: DecorationImage(
                    image: ExactAssetImage("assets/logo.png"),
                    //AssetImage("assets/car.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ), //Icon(Icons.qr_code_scanner),
              label: "MemoScan",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: "Infos",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Proches",
            ),
          ],
        ),
      ),
    );
  }
  //
}
