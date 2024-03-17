import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memoscan/pages/profil/multimedia.dart';

import 'accomplissements.dart';
import 'accueil_profil.dart';
import 'biographie.dart';

class Profil extends StatelessWidget {
  //
  RxInt profil = 0.obs;
  //
  GlobalKey<ScaffoldState> cle = GlobalKey();
  //
  RxString titre = "Profile".obs;
  //
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      key: cle,
      endDrawer: Drawer(
        child: Container(
          child: Stack(
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
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 0, left: 0, right: 0),
                  child: Container(
                    height: Get.size.height / 7,
                    width: Get.size.width / 2.5,
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
              ),
              Align(
                alignment: Alignment.center,
                child: ListView(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 10,
                    right: 10,
                  ),
                  children: [
                    InkWell(
                      onTap: () {
                        //
                        titre.value = "Profil";
                        profil.value = 0;
                        Get.back();
                      },
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Profil",
                              style: st,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //
                        titre.value = "Bigraphie & messages";
                        profil.value = 1;
                        Get.back();
                      },
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Bigraphie & messages",
                              style: st,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //
                        titre.value = "Photos & Vidéos";
                        profil.value = 2;
                        Get.back();
                      },
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Photos & Vidéos",
                              style: st,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //
                        titre.value = "Accomplissements";
                        profil.value = 3;
                        Get.back();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Accomplissements",
                              style: st,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
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
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        //
                        Get.back();
                        //
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                    Text(
                      titre.value,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // PopupMenuButton(
                    //   child: SvgPicture.asset(
                    //     "assets/HeroiconsOutlineMenuAlt3.svg",
                    //     colorFilter:
                    //         ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    //     //semanticsLabel: e["titre"],
                    //     height: 30,
                    //     width: 30,
                    //   ),
                    //   onSelected: (s) {
                    //     //
                    //   },
                    //   itemBuilder: (c) {
                    //     return [
                    //       PopupMenuItem(
                    //         child: Padding(
                    //           padding: EdgeInsets.all(5),
                    //           child: Row(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             children: [
                    //               // const Icon(
                    //               //   Icons.arrow_back_ios,
                    //               //   size: 20,
                    //               // ),
                    //               const SizedBox(
                    //                 width: 10,
                    //               ),
                    //               Text(
                    //                 "Bigraphie & messages",
                    //                 style: st,
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //       PopupMenuItem(
                    //         child: Padding(
                    //           padding: EdgeInsets.all(5),
                    //           child: Row(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             children: [
                    //               // const Icon(
                    //               //   Icons.arrow_back_ios,
                    //               //   size: 20,
                    //               // ),
                    //               const SizedBox(
                    //                 width: 10,
                    //               ),
                    //               Text(
                    //                 "Photos & Vidéos",
                    //                 style: st,
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //       PopupMenuItem(
                    //         child: Padding(
                    //           padding: const EdgeInsets.all(5),
                    //           child: Row(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceBetween,
                    //             children: [
                    //               // const Icon(
                    //               //   Icons.arrow_back_ios,
                    //               //   size: 20,
                    //               // ),
                    //               const SizedBox(
                    //                 width: 10,
                    //               ),
                    //               Text(
                    //                 "Accomplissements",
                    //                 style: st,
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ];
                    //   },
                    // ),
                    Builder(builder: (context) {
                      return IconButton(
                        onPressed: () {
                          //
                          cle.currentState!.openEndDrawer();
                          //Scaffold.of(cle.currentContext!).openEndDrawer();
                        },
                        icon: SvgPicture.asset(
                          "assets/HeroiconsOutlineMenuAlt3.svg",
                          colorFilter:
                              ColorFilter.mode(Colors.black, BlendMode.srcIn),
                          //semanticsLabel: e["titre"],
                          height: 30,
                          width: 30,
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: profil.value == 0
                    ? AccueilProfile()
                    : profil.value == 1
                        ? Biographie(1)
                        : profil.value == 2
                            ? MultiMedia(1)
                            : Accomplissement(),
              ),
            )
          ],
        ),
      ),
    );
  }

  //
  TextStyle st = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );
}
