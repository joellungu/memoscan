import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memoscan/pages/proches/bio_defunt_controller.dart';

class Biographie extends StatelessWidget {
  //
  int idDef;
  Biographie(this.idDef);
  //
  BioDefuntController bioDefuntController = Get.find();
  //
  @override
  Widget build(BuildContext context) {
    //
    return FutureBuilder(
      future: bioDefuntController.getBio2("$idDef"),
      builder: ((context, t) {
        if (t.hasData) {
          String text = t.data as String;
          return ListView(
            padding: const EdgeInsets.all(25),
            children: [
              //
              Text(text)
            ],
          );
        } else if (t.hasError) {
          return Container();
        }
        return Center(
          child: Container(
            height: 40,
            width: 40,
            child: const CircularProgressIndicator(),
          ),
        );
      }),
    );
  }
  //
}
