import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:memoscan/utils/requete.dart';

import 'photo_defunt_controller.dart';

class PhotoDefunt extends GetView<PhotoDefuntController> {
  int idDef;
  PhotoDefunt(this.idDef) {
    //
    controller.getAllProche("$idDef");
  }
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      body: controller.obx((state) {
        List photosIds = state!;
        //
        print("photosIds: $photosIds");

        return GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
          padding: const EdgeInsets.only(right: 30, left: 30, top: 20),
          children: List.generate(photosIds.length, (index) {
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(
                      "${Requete.url}/media/imagedata?id=${photosIds[index]}"),
                  //AssetImage("assets/car.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1)),
                child: IconButton(
                  onPressed: () {
                    //
                    Get.dialog(
                      Center(
                        child: Container(
                          height: 40,
                          width: 40,
                          child: const CircularProgressIndicator(),
                        ),
                      ),
                    );
                    //
                    controller.setSupprimer("${photosIds[index]}", "$idDef");
                  },
                  icon: Icon(
                    Icons.delete,
                    size: 20,
                  ),
                ),
              ),
            );
          }),
        );
      },
          onEmpty: Container(),
          onLoading: Center(
            child: Container(
              height: 40,
              width: 40,
              child: const CircularProgressIndicator(),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //
          final ImagePicker picker = ImagePicker();
          // Pick an image.
          final XFile? image = await picker.pickImage(
              source: ImageSource.gallery,
              imageQuality: 75,
              maxWidth: 1024,
              maxHeight: 1024);

          if (image != null) {
            File file = File(image.path);
            //
            controller.addPhoto(
              "$idDef",
              file.readAsBytesSync(),
            );
          } else {
            Get.snackbar("Oups", "Pas de photo ajouté.");
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
  //
}
