import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_thumbnail_video/index.dart';
import 'package:get_thumbnail_video/video_thumbnail.dart';
import 'package:memoscan/pages/proches/video_defunt_controller.dart';
import 'package:memoscan/utils/requete.dart';

class VideoDefunt extends GetView<VideoDefuntController> {
  int idDef;
  VideoDefunt(this.idDef) {
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
          children: List.generate(
            photosIds.length,
            (index) {
              String url =
                  "${Requete.url}/media/videodata?id=${photosIds[index]}";
              print("url: $url");
              return FutureBuilder(
                future: getVideoTh(url, photosIds, index),
                builder: (c, t) {
                  //
                  if (t.hasData) {
                    return t.data as Widget;
                  } else if (t.hasError) {
                    return Container(
                      color: Colors.red,
                      height: 200,
                      width: 200,
                    );
                  }
                  return Center(
                    child: Container(
                      height: 40,
                      width: 40,
                      child: const CircularProgressIndicator(),
                    ),
                  );
                },
              );
            },
          ),
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
          FilePickerResult? result = await FilePicker.platform.pickFiles(
            type: FileType.video,
          );

          if (result != null) {
            File file = File(result.files.single.path!);
            //
            controller.addVideo(
              "$idDef",
              file.readAsBytesSync(),
            );
          } else {
            Get.snackbar("Oups", "Pas de fichier ajouté.");
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  //
  Future<Widget> getVideoTh(String url, List photosIds, int index) async {
    final uint8list = await VideoThumbnail.thumbnailData(
      video: url,
      imageFormat: ImageFormat.JPEG,
      maxWidth:
          128, // specify the width of the thumbnail, let the height auto-scaled to keep the source aspect ratio
      quality: 25,
    );
    //
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: MemoryImage(uint8list!),
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
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: IconButton(
          onPressed: () {
            //
            Get.dialog(
              const Center(
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: CircularProgressIndicator(),
                ),
              ),
            );
            //
            controller.setSupprimer("${photosIds[index]}", "$idDef");
            //
          },
          icon: const Icon(
            Icons.delete,
            size: 20,
          ),
        ),
      ),
    );
  }
}
