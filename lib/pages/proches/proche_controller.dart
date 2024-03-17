import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get_storage/get_storage.dart';
import 'package:memoscan/utils/requete.dart';

class ProcheController extends GetxController with StateMixin<List> {
  //
  Requete requete = Requete();
  //
  var box = GetStorage();
  //
  getAllProche() async {
    //
    List defunts = box.read("defunts") ?? [];
    //Set dfs = defunts.toSet();
    print("defunts: $defunts");
    if (defunts.isNotEmpty) {
      //
      change([], status: RxStatus.loading());
      //
      Response response = await requete.postE("defunt/liste", defunts);
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
    } else {
      //Get.snackbar("Oups", "La liste est vide");
    }
  }

  //
  addVideo(String path) async {
    //
    List defunts = box.read("defunts") ?? [];
    //Set dfs = defunts.toSet();
    print("defunts: $defunts");
    if (defunts.isNotEmpty) {
      //
      change([], status: RxStatus.loading());
      //
      Response response = await requete.postE("defunt/liste", defunts);
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
    } else {
      //Get.snackbar("Oups", "La liste est vide");
    }
  }
}
