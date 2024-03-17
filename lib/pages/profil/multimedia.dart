import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:memoscan/pages/proches/photo_defunt_controller.dart';
import 'package:memoscan/utils/requete.dart';

class MultiMedia extends StatelessWidget {
  //
  int idDef;
  //
  MultiMedia(this.idDef);
  //
  PhotoDefuntController photoDefuntController = Get.find();
  //
  @override
  Widget build(BuildContext context) {
    //
    return FutureBuilder(
      future: photoDefuntController.getAllProche2("$idDef"),
      builder: ((context, t) {
        if (t.hasData) {
          //String text = t.data as String;
          List photosIds = t.data!;
          //
          print("photosIds: $photosIds");

          return GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
            padding: const EdgeInsets.only(right: 30, left: 30, top: 20),
            children: List.generate(photosIds.length, (index) {
              return InkWell(
                onTap: () {
                  //
                  Get.dialog(
                    Container(
                      padding: EdgeInsets.all(2),
                      height: Get.size.height,
                      width: Get.size.width,
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
                    ),
                  );
                },
                child: Container(
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
                ),
              );
            }),
          );
        } else if (t.hasError) {
          return Container();
        }
        return const Center(
          child: SizedBox(
            height: 40,
            width: 40,
            child: CircularProgressIndicator(),
          ),
        );
      }),
    );
    return ListView(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  5,
                  (index) => Container(
                    height:
                        index % 2 == 1 ? 30 * (index + 1) : 50 * (index + 1),
                    width: double.maxFinite,
                    margin: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  5,
                  (index) => Container(
                    height: 50 * (index + 1),
                    margin: const EdgeInsets.all(2),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
    //
    return Container(
      width: 300,
      height: 500,
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 2,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
  //
}
