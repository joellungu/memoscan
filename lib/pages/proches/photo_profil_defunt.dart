import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:memoscan/pages/proches/photo_profil_defunt_controller.dart';
import 'package:memoscan/utils/requete.dart';

class PhotoProfileDefunt extends GetView<PhotoProfileDefuntController> {
  int idDef;
  PhotoProfileDefunt(this.idDef) {
    controller.getPhotoProfil("$idDef");
  }
  //
  @override
  Widget build(BuildContext context) {
    //
    return InkWell(
      onTap: () async {
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
          controller.addPhotoProfile(
            "$idDef",
            file.readAsBytesSync(),
          );
        } else {
          Get.snackbar("Oups", "Pas de photo ajouté.");
        }
        //
      },
      child: controller.obx(
        (state) {
          Map rep = state! as Map;
          print("${Requete.url}/defunt/profile?id=$idDef");
          return Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.all(2),
                  child: InkWell(
                    onTap: () {
                      //
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                        color: Colors.grey.shade300,
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.edit,
                      ),
                    ),
                  ),
                ),
              ),
              rep['photoProfile']
                  ? Container(
                      height: 120,
                      width: 120,
                      margin: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(60),
                        //border: Border.all(color: Colors.black, width: 2),
                        image: DecorationImage(
                          image: NetworkImage(
                              "${Requete.url}/defunt/profile?id=$idDef"),
                          //AssetImage("assets/car.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  : Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                    )
            ],
          );
        },
        onEmpty: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.all(2),
                child: InkWell(
                  onTap: () {
                    //
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                      color: Colors.grey.shade300,
                    ),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.edit,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.black, width: 2),
              ),
            )
          ],
        ),
        onLoading: Center(
          child: Container(
            height: 40,
            width: 40,
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
  //
}
