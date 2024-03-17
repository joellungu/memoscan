import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccueilProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          //
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/ailes.jpg",
                width: 100,
              ),
            ),
          ),
          Expanded(
            //
            flex: 3,
            child: Container(
              //child: Image.asset("assets/couverture.jpg"),
              decoration: BoxDecoration(
                //color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: ExactAssetImage("assets/couverture.jpg"),
                  //AssetImage("assets/car.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "La famille est un jilet de sauvetage dans la mer aurageuse de la vie",
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Italianno',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                scrollDirection: Axis.horizontal,
                //padding: const EdgeInsets.only(right: 30, left: 30),
                children: List.generate(10, (index) {
                  return Container(
                    alignment: Alignment.center,
                    child: index % 3 == 0
                        ? Icon(
                            Icons.play_circle,
                            color: Colors.white,
                            size: 70,
                          )
                        : Container(
                            height: 0,
                            width: 0,
                          ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: ExactAssetImage("assets/photo${index + 1}.jpg"),
                        //AssetImage("assets/car.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
  //
}
