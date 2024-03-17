import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:memoscan/utils/requete.dart';

class PhotoProfileDefuntController extends GetxController with StateMixin<Map> {
  //
  Requete requete = Requete();
  //
  var box = GetStorage();
  //
  getPhotoProfil(String id) async {
    //
    change({}, status: RxStatus.loading());
    //
    Response response = await requete.getE("defunt/checkprofile?id=$id");
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
      change({}, status: RxStatus.empty());
    }
  }

  //
  addPhotoProfile(String idDefunt, Uint8List photo) async {
    //
    var url = Uri.parse("${Requete.url}/defunt/profile?id=$idDefunt");
    var response = await http.put(url, body: photo);
    //
    //change({}, status: RxStatus.loading());
    //

    print("je suis appelé getE: ${url.path}");
    //Response response = await requete.postE("media/image?id=$idDefunt", photo);
    //
    if (response.statusCode == 200 || response.statusCode == 201) {
      print("body: ${response.statusCode}");
      print("body: ${response.body}");
      //
      getPhotoProfil(idDefunt);
    } else {
      //
      print("body: ${response.statusCode}");
      print("body: ${response.body}");
      //
      Get.snackbar("Oups", "Nous n'avons pas pu mettre en ligne la photo!");
    }
  }
}
