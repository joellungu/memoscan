import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfileTest extends StatelessWidget {
  Map cat;
  ProfileTest(this.cat);
  //
  List services = [
    {"nom": "Maquillage", "prix": "3000", "devise": "CDF"},
    {"nom": "Manicure", "prix": "5000", "devise": "CDF"},
    {"nom": "Pédicure", "prix": "7000", "devise": "CDF"},
  ];
  //
  @override
  Widget build(BuildContext context) {
    //
    /**DefaultTabController(
      length: 2,
      child: 
       */

    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                // title: RichText(
                //   textAlign: TextAlign.left,
                //   text: TextSpan(
                //     style: TextStyle(
                //       //color: Colors.black,
                //       fontSize: 25,
                //       fontWeight: FontWeight.bold,
                //     ),
                //     text: "Alice Masani\n",
                //     children: [
                //       TextSpan(
                //         text: "Macquilleuse",
                //         style: TextStyle(
                //           //color: Colors.black,
                //           fontSize: 20,
                //           fontWeight: FontWeight.normal,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

                background: Container(
                  decoration: BoxDecoration(
                      // image: DecorationImage(
                      //   image: ExactAssetImage("${cat['profil']}"),
                      //   fit: BoxFit.contain,
                      // ),
                      // color: Colors.blue,
                      // borderRadius: BorderRadius.circular(2),
                      // gradient: LinearGradient(
                      //   begin: Alignment.topCenter,
                      //   end: Alignment.bottomCenter,
                      //   colors: [
                      //     Colors.blue.shade100.withOpacity(0.1),
                      //     Colors.blue.shade100.withOpacity(0.1),
                      //     Colors.blue.shade100.withOpacity(0.2),
                      //     Colors.blue.shade100.withOpacity(0.3),
                      //     Colors.blue.shade100.withOpacity(0.4),
                      //     Colors.blue.shade100.withOpacity(0.5),
                      //     Colors.blue.shade100.withOpacity(0.6),
                      //     Colors.blue.shade100.withOpacity(0.7),
                      //     Colors.blue.shade100,
                      //     Colors.blue.shade100,
                      //     Colors.blue.shade200,
                      //     //Colors.blue.shade300,
                      //     //Colors.blue.shade400,
                      //     //Colors.blue.shade500,
                      //     Colors.blue.shade500,
                      //     Colors.blue.shade700,
                      //   ],
                      //   //tileMode: TileMode.decal,
                      //   //stops: [0.1, 0.2, 0.3],
                      // ),
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
              bottom: TabBar(
                isScrollable: true,
                tabAlignment: TabAlignment.center,
                tabs: [
                  Tab(
                    child: Text("Bio"),
                  ),
                  Tab(
                    child: Text("Photos"),
                  ),
                  Tab(
                    child: Text("Vidéos"),
                  ),
                  Tab(
                    child: Text("Hommages"),
                  ),
                  Tab(
                    child: Text("Détails"),
                  ),
                ],
              ),
            ),
            //SliverSafeArea()
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
            ),
            // SliverList(
            //   delegate: SliverChildListDelegate([
            //     Padding(
            //       padding: EdgeInsets.all(10),
            //       child: Column(
            //         children: [
            //           const ListTile(
            //             title: Text(
            //               "Devise",
            //               style: TextStyle(
            //                 //color: Colors.black,
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //             subtitle: Text(
            //                 "Le travaille bien fait c'est ce qui me passionne"),
            //             //trailing: Icon(CupertinoIcons.person),
            //           ),
            //           ListTile(
            //             onTap: () {
            //               //
            //             },
            //             title: const Text(
            //               "Note",
            //               style: TextStyle(
            //                 //color: Colors.black,
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //             subtitle: Row(
            //               mainAxisAlignment: MainAxisAlignment.start,
            //               children: [
            //                 Icon(
            //                   Icons.star,
            //                   color: Colors.yellow.shade700,
            //                   size: 15,
            //                 ),
            //                 Icon(
            //                   Icons.star,
            //                   color: Colors.yellow.shade700,
            //                   size: 15,
            //                 ),
            //                 Icon(
            //                   Icons.star,
            //                   color: Colors.yellow.shade700,
            //                   size: 15,
            //                 ),
            //                 Icon(
            //                   Icons.star,
            //                   color: Colors.yellow.shade700,
            //                   size: 15,
            //                 ),
            //                 Icon(
            //                   Icons.star,
            //                   color: Colors.yellow.shade700,
            //                   size: 15,
            //                 ),
            //               ],
            //             ),
            //             trailing: Icon(
            //               Icons.favorite,
            //               color: Colors.grey,
            //             ),
            //           ),
            //           ListTile(
            //             title: Text(
            //               "Capacités",
            //               style: TextStyle(
            //                 //color: Colors.black,
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //             subtitle: Text(
            //                 "Maquillage, Coiffure homme & dame, Manicure, Pédicure, Meche, Cabelo, tissage, Barbe"),
            //           ),
            //           ListTile(
            //             onTap: () {
            //               //
            //               //Get.to(Catalogue(cat));
            //             },
            //             title: const Text(
            //               "Catalogue",
            //               style: TextStyle(
            //                 //color: Colors.black,
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //             subtitle: const Text("Voir ses realisations"),
            //             trailing: const Icon(Icons.photo_camera),
            //           ),
            //           ListTile(
            //             onTap: () {
            //               showModalBottomSheet(
            //                 context: context,
            //                 builder: (c) {
            //                   return Container();
            //                 },
            //               );
            //             },
            //             title: Text(
            //               "Distance",
            //               style: TextStyle(
            //                 //color: Colors.black,
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //             subtitle: Text("À 5 min de vous"),
            //             trailing: Icon(Icons.location_on),
            //           ),
            //           Align(
            //             alignment: Alignment.centerLeft,
            //             child: Padding(
            //               padding: EdgeInsets.only(left: 15),
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.start,
            //                 children: [
            //                   Text(
            //                     "Services ",
            //                     style: TextStyle(
            //                       color: Colors.teal.shade700,
            //                       fontWeight: FontWeight.bold,
            //                       fontSize: 20,
            //                     ),
            //                   ),
            //                   Expanded(
            //                     flex: 1,
            //                     child: Container(
            //                       height: 10,
            //                       decoration: BoxDecoration(
            //                         border: Border(
            //                           bottom: BorderSide(
            //                             color: Colors.grey,
            //                           ),
            //                         ),
            //                       ),
            //                       width: double.maxFinite,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ),
            //           Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             children: List.generate(services.length, (index) {
            //               Map s = services[index];
            //               return ListTile(
            //                 title: Text(
            //                   "${s['nom']}",
            //                   style: const TextStyle(
            //                     //color: Colors.black,
            //                     fontStyle: FontStyle.italic,
            //                     fontSize: 20,
            //                     fontWeight: FontWeight.normal,
            //                   ),
            //                 ),
            //                 subtitle: Row(
            //                   mainAxisAlignment: MainAxisAlignment.start,
            //                   children: [
            //                     Text(
            //                       "${s['prix']} ",
            //                       style: TextStyle(
            //                         color: Colors.blue.shade900,
            //                         fontWeight: FontWeight.bold,
            //                         fontSize: 15,
            //                       ),
            //                     ),
            //                     Text(
            //                       "${s['devise']}",
            //                       style: TextStyle(
            //                         color: Colors.blue.shade900,
            //                         fontWeight: FontWeight.normal,
            //                         fontStyle: FontStyle.italic,
            //                         fontSize: 15,
            //                       ),
            //                     )
            //                   ],
            //                 ),
            //                 //trailing: Icon(Icons.fact_check_outlined),
            //               );
            //             }),
            //           ),
            //         ],
            //       ),
            //     )
            //   ]),
            // ),
          ],
        ),
      ),
    );
  }
}
