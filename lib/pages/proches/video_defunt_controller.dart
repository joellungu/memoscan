import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:memoscan/utils/requete.dart';

class VideoDefuntController extends GetxController with StateMixin<List> {
  //
  Requete requete = Requete();
  //
  var box = GetStorage();
  //
  getAllProche(String id) async {
    //
    change([], status: RxStatus.loading());
    //
    Response response = await requete.getE("media/videos?id=$id");
    //
    if (response.isOk) {
      print("body: ${response.statusCode}");
      print("body: ${response.body}");
      //
      change(response.body, status: RxStatus.success());
    } else {
      //
      print("body: ${response.statusCode}");
      print("body: ${response.body}");
      change([], status: RxStatus.empty());
    }
  }

  //
  setSupprimer(String id, idDef) async {
    //
    //change([], status: RxStatus.loading());
    //
    Response response = await requete.deleteE("media/video?id=$id");
    //
    if (response.isOk) {
      print("body: ${response.statusCode}");
      print("body: ${response.body}");
      //
      Get.back();
      getAllProche(idDef);
    } else {
      //
      Get.back();
      print("body: ${response.statusCode}");
      print("body: ${response.body}");
      Get.snackbar("Oups", "Erreur lors de suppression");
    }
  }

  //
  Future<List> getAllProche2(String id) async {
    //
    Response response = await requete.getE("media/videos?id=$id");
    //
    if (response.isOk) {
      print("body: ${response.statusCode}");
      print("body: ${response.body}");
      //
      return response.body;
    } else {
      //
      print("body: ${response.statusCode}");
      print("body: ${response.body}");
      return [];
    }
  }

  //
  addVideo(String idDefunt, Uint8List photo) async {
    //
    var url = Uri.parse("${Requete.url}/media/video?id=$idDefunt");
    var response = await http.post(url, body: photo);
    //
    change([], status: RxStatus.loading());
    //
    //Response response = await requete.postE("media/image?id=$idDefunt", photo);
    //
    if (response.statusCode == 200 || response.statusCode == 201) {
      print("body: ${response.statusCode}");
      print("body: ${response.body}");
      //
      getAllProche(idDefunt);
    } else {
      //
      print("body: ${response.statusCode}");
      print("body: ${response.body}");
      //
      Get.snackbar("Oups", "Nous n'avons pas pu mettre en ligne la photo!");
    }
  }
  //
}
