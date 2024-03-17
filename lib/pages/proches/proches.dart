import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:memoscan/pages/proches/proche_controller.dart';
import 'package:memoscan/pages/proches/profil_defunt.dart';

class Proches extends GetView<ProcheController> {
  //
  var box = GetStorage();
  //
  Proches() {
    //
    controller.getAllProche();
  }
  //
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(),
      body: controller.obx(
        (state) {
          //
          List defunts = state!;
          //
          return ListView(
            padding: const EdgeInsets.all(0),
            children: List.generate(
              defunts.length,
              (index) {
                //
                Map defunt = defunts[index];
                //2024315152942791
                return ListTile(
                  onTap: () {
                    //
                    Get.to(ProfilDefunt(defunt));
                    //
                  },
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                        image: ExactAssetImage("assets/logo.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  title: Text(
                    "${defunt['nom']} ${defunt['postnom']} ${defunt['prenom']}",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    "${defunt['dateNaissance']} - ${defunt['dateDece']}",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () async {
                      //
                      List dfs = box.read("defunts") ?? [];
                      Set defunts = dfs.toSet();
                      defunts.remove(defunt['code']);
                      //
                      box.write("defunts", defunts.toList());
                      controller.getAllProche();
                      //
                    },
                    icon: const Icon(Icons.delete),
                  ),
                );
              },
            ),
          );
        },
        onEmpty: Container(),
        onLoading: const Center(
          child: SizedBox(
            height: 40,
            width: 40,
            child: CircularProgressIndicator(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //
          TextEditingController code = TextEditingController();
          //
          Get.dialog(Center(
            child: Card(
              elevation: 0,
              child: Container(
                padding: EdgeInsets.all(20),
                height: 200,
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Align(
                      alignment: Alignment.topCenter,
                      child: Text("MemoScan"),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextField(
                        controller: code,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Code profil defunt",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        onPressed: () {
                          //
                          List dfs = box.read("defunts") ?? [];
                          Set defunts = dfs.toSet();
                          defunts.add(code.text);
                          print("defunts: ${defunts.toList()}");
                          box.write("defunts", defunts.toList());
                          Get.back();
                          controller.getAllProche();
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.indigo),
                        ),
                        child: Container(
                          height: 48,
                          width: double.maxFinite,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Icon(
                              //   Icons.qr_code,
                              // ),
                              Text("Ajouter"),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
  //
}
