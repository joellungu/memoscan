import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:memoscan/pages/profil/profil2.dart';
import 'package:memoscan/utils/requete.dart';

class BioDefuntController extends GetxController with StateMixin<String> {
  //
  Requete requete = Requete();
  //
  var box = GetStorage();
  //
  getBio(String id) async {
    //
    change("", status: RxStatus.loading());
    //
    Response response = await requete.getE("biographie?id=$id");
    //
    if (response.isOk) {
      print("statusCode: ${response.statusCode}");
      print("body: ${response.body}");
      //
      change(response.body, status: RxStatus.success());
    } else {
      //
      print("statusCode: ${response.statusCode}");
      print("body: ${response.body}");
      change("", status: RxStatus.empty());
    }
  }

  //
  Future<String> getBio2(String id) async {
    //
    //change("", status: RxStatus.loading());
    //
    Response response = await requete.getE("biographie?id=$id");
    //
    if (response.isOk) {
      print("statusCode: ${response.statusCode}");
      print("body: ${response.body}");
      //
      //change(response.body, status: RxStatus.success());
      return response.body;
    } else {
      //
      print("statusCode: ${response.statusCode}");
      print("body: ${response.body}");
      //change("", status: RxStatus.empty());
      return "";
    }
  }

  //
  addBio(String idDefunt, String text) async {
    //
    var url = Uri.parse("${Requete.url}/biographie?id=$idDefunt");
    var response = await http.post(url, body: text);
    //
    change("", status: RxStatus.loading());
    //
    //Response response = await requete.postE("media/image?id=$idDefunt", photo);
    //
    if (response.statusCode == 200 || response.statusCode == 201) {
      print("body: ${response.statusCode}");
      print("body: ${response.body}");
      //
      getBio(idDefunt);
    } else {
      //
      print("body: ${response.statusCode}");
      print("body: ${response.body}");
      //
      Get.snackbar("Oups", "Nous n'avons pas pu mettre en ligne la photo!");
    }
  }

  //
  scanQrCode(String qrcode) async {
    //
    print("qrcode: qrcode");
    //
    Response response = await requete.getE("defunt/scan?qrcode=$qrcode");
    //
    if (response.isOk) {
      print("statusCode: ${response.statusCode}");
      print("body: ${response.body}");
      Get.back();
      Get.to(Profil2(response.body));
      //
    } else {
      //
      print("statusCode: ${response.statusCode}");
      print("body: ${response.body}");
      Get.back();
      Get.snackbar("Oups", "Ce qrcode n'est pas valide");
    }
  }
}
