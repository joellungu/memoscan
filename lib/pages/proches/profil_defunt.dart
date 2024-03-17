import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'bio_defunt.dart';
import 'photo_defunt.dart';
import 'photo_profil_defunt.dart';
import 'video_defunt.dart';

class ProfilDefunt extends StatelessWidget {
  Map defunt;
  ProfilDefunt(this.defunt);
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
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: true,
                expandedHeight: Get.size.height / 2.5,
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
                            height: Get.size.height / 4,
                            //width: Get.size.width / 2.5,
                            //color: Colors.amber,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                    alignment: Alignment.center,
                                    color: Colors.white,
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 2,
                                        ),
                                      ),
                                      child: PhotoProfileDefunt(defunt['id']),
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
                                        fontSize: 15,
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
                                      "${getDate(defunt['dateNaissance'].split('-'))} - ${getDate(defunt['dateDece'].split('-'))}",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(),
                                )
                                // Expanded(
                                //   flex: 4,
                                //   child: Container(
                                //     child: Row(
                                //       mainAxisAlignment:
                                //           MainAxisAlignment.spaceEvenly,
                                //       children: [
                                //         Column(
                                //           mainAxisAlignment:
                                //               MainAxisAlignment.spaceAround,
                                //           children: [
                                //             Icon(Icons.star_rounded),
                                //             Text(
                                //               "Favoris",
                                //               style: TextStyle(
                                //                 fontSize: 10,
                                //                 fontWeight: FontWeight.w900,
                                //               ),
                                //             ),
                                //           ],
                                //         ),
                                //         Column(
                                //           mainAxisAlignment:
                                //               MainAxisAlignment.spaceAround,
                                //           children: [
                                //             Icon(Icons.share),
                                //             Text(
                                //               "Partager",
                                //               style: TextStyle(
                                //                 fontSize: 10,
                                //                 fontWeight: FontWeight.w900,
                                //               ),
                                //             ),
                                //           ],
                                //         ),
                                //       ],
                                //     ),
                                //   ),
                                // )
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
                    // Tab(
                    //   iconMargin: EdgeInsets.all(0),
                    //   //icon: Icon(Icons.location_on),
                    //   child: Text(
                    //     "Détails",
                    //     style: TextStyle(
                    //       fontSize: 10,
                    //     ),
                    //   ),
                    //   //text: "Services",
                    // ),
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
              BioDefunt(defunt['id']),
              PhotoDefunt(defunt['id']),
              VideoDefunt(defunt['id']),
              //Container(),
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
