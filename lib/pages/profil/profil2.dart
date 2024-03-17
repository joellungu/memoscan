import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memoscan/pages/profil/videos.dart';
import 'package:memoscan/utils/requete.dart';

import 'biographie.dart';
import 'details.dart';
import 'multimedia.dart';

class Profil2 extends StatelessWidget {
  Map defunt;
  Profil2(this.defunt);
  //
  List services = [
    {"nom": "Maquillage", "prix": "3000", "devise": "CDF"},
    {"nom": "Manicure", "prix": "5000", "devise": "CDF"},
    {"nom": "Pédicure", "prix": "7000", "devise": "CDF"},
  ];
  //
  //AppController appController = Get.find();
  //
  @override
  Widget build(BuildContext context) {
    //
    /**DefaultTabController(
      length: 2,
      child: 
       */

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: true,
                expandedHeight: Get.size.height / 2.5,
                automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  background: Container(
                    decoration: BoxDecoration(
                      // image: DecorationImage(
                      //   image: ExactAssetImage("${cat['profil']}"),
                      //   fit: BoxFit.contain,
                      // ),
                      //color: Colors.blue,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 35,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              //
                              image: DecorationImage(
                                image: ExactAssetImage("assets/logo.png"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: Get.size.height / 3.5,
                            //width: Get.size.width / 2.5,
                            //color: Colors.amber,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    alignment: Alignment.center,
                                    //color: Colors.white,

                                    child: defunt['photoProfile']
                                        ? Container(
                                            height: 100,
                                            width: 100,
                                            margin: const EdgeInsets.all(0),
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade100,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 2),
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    "${Requete.url}/defunt/profile?id=${defunt['id']}"),
                                                //AssetImage("assets/car.png"),
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          )
                                        : Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 2),
                                            ),
                                          ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${defunt['nom']} ${defunt['postnom']} ${defunt['prenom']}",
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    //color: Colors.black,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      //"02 Janvier 1999 - 12 Mars 2023",
                                      "${getDate(defunt['dateNaissance'].split('-'))} - ${getDate(defunt['dateDece'].split('-'))}",
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    // child: Hero(
                    //   tag: "${cat['profil']}",
                    //   child: Image.asset(
                    //     "${cat['profil']}",
                    //     fit: BoxFit.contain,
                    //     height: double.maxFinite,
                    //     width: double.maxFinite,
                    //   ),
                    // ),
                  ),
                ),
                bottom: const TabBar(
                  indicatorColor: Colors.blue,
                  //labelColor: Colors.black,
                  isScrollable: false,
                  tabAlignment: TabAlignment.center,
                  indicatorPadding: EdgeInsets.all(3),
                  //indicatorWeight: 1,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.pink, width: 2),
                      bottom: BorderSide(color: Colors.pink, width: 2),
                    ),
                  ),
                  tabs: [
                    Tab(
                      iconMargin: EdgeInsets.all(0),
                      //icon: Icon(Icons.location_on),
                      child: Text(
                        "Biographie",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      //text: "Services",
                    ),
                    Tab(
                      iconMargin: EdgeInsets.all(0),
                      //icon: Icon(Icons.location_on),
                      child: Text(
                        "Photos",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      //text: "Services",
                    ),
                    Tab(
                      iconMargin: EdgeInsets.all(0),
                      //icon: Icon(Icons.location_on),
                      child: Text(
                        "Videos",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      //text: "Services",
                    ),
                    // Tab(
                    //   iconMargin: EdgeInsets.all(0),
                    //   //icon: Icon(Icons.location_on),
                    //   child: Text(
                    //     "Hommages",
                    //     style: TextStyle(
                    //       fontSize: 10,
                    //     ),
                    //   ),
                    //   //text: "Services",
                    // ),
                    Tab(
                      iconMargin: EdgeInsets.all(0),
                      //icon: Icon(Icons.location_on),
                      child: Text(
                        "Détails",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      //text: "Services",
                    ),
                  ],
                ),
              ),
              // SliverGrid(
              //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              //     maxCrossAxisExtent: 100.0,
              //     mainAxisSpacing: 10.0,
              //     crossAxisSpacing: 10.0,
              //     childAspectRatio: 4.0,
              //   ),
              //   delegate: SliverChildBuilderDelegate(
              //     (BuildContext context, int index) {
              //       return Container(
              //         alignment: Alignment.center,
              //         color: Colors.teal[100 * (index % 9)],
              //         child: Text('Grid Item $index'),
              //       );
              //     },
              //     childCount: 10,
              //   ),
              // ),
              // SliverList(
              //   delegate: SliverChildListDelegate([
              //     Padding(
              //       padding: EdgeInsets.all(10),
              //       child: Column(
              //         children: [],
              //       ),
              //     )
              //   ]),
              // ),
              //
              // SliverFixedExtentList(
              //   itemExtent: 50.0,
              //   delegate: SliverChildBuilderDelegate(
              //     (BuildContext context, int index) {
              //       return Container(
              //         alignment: Alignment.center,
              //         color: Colors.lightBlue[100 * (index % 9)],
              //         child: Text('List Item $index'),
              //       );
              //     },
              //   ),
              // ),
            ];
          },
          body: TabBarView(
            children: [
              Biographie(defunt['id']),
              MultiMedia(defunt['id']),
              Videos(defunt['id']),
              Details(defunt),
              //Container(),
            ],
          ),
        ),
      ),
    );
  }

  String getDate(List d) {
    String date = "";
    List mois = [
      "Janvier",
      "Février",
      "Mars",
      "Avril",
      "Mai",
      "Juin",
      "Juillet",
      "Aout",
      "Septembre",
      "Octobre",
      "Novembre",
      "Decembre",
    ];
    int m = int.parse(d[1]);
    date = "${d[0]} ${mois[m]} ${d[2]}";
    return date;
  }
}
