import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bio_defunt_controller.dart';

class BioDefunt extends GetView<BioDefuntController> {
  int idDef;
  BioDefunt(this.idDef) {
    //
    controller.getBio("$idDef");
  }
  //
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      body: controller.obx(
        (state) {
          String text = state! as String;
          return ListView(
            padding: const EdgeInsets.all(25),
            children: [
              //
              Text(text),
            ],
          );
        },
        onEmpty: Container(),
        onLoading: Center(
          child: Container(
            height: 40,
            width: 40,
            child: const CircularProgressIndicator(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //
          FilePickerResult? result = await FilePicker.platform.pickFiles(
              type: FileType.custom, allowedExtensions: ["txt", "TXT"]);

          if (result != null) {
            File file = File(result.files.single.path!);
            //
            controller.addBio(
              "$idDef",
              file.readAsStringSync(),
            );
          } else {
            Get.snackbar("Oups", "Pas de fichier ajouté.");
          }
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
  //
}
