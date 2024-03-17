import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Map defunt;
  Details(this.defunt);
  @override
  Widget build(BuildContext context) {
    //
    return Padding(
      padding: EdgeInsets.all(20),
      child: ListView(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 8,
                      child: ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          alignment: Alignment.center,
                          child: Text(
                            "ID",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blueGrey.shade700,
                          ),
                        ),
                        title: const Text(
                          "QrCode defunt",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        subtitle: Text("${defunt['qrcode']}"),
                      ),
                    ),
                    const Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.copy,
                            size: 15,
                          ),
                          Text("Copier"),
                        ],
                      ),
                    )
                  ],
                ),
                const ListTile(
                  title: Text(
                    "Information du cimetière",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Nom du cimetière",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text("${defunt['cimetiere']}"),
                ),
                ListTile(
                  title: Text(
                    "Adresse du cimetière",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text("${defunt['adresseCimetiere']}"),
                ),
              ],
            ),
          ),
          Card(
            elevation: 3,
            color: Colors.white,
            child: SizedBox(
              height: 70,
              width: double.maxFinite,
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage("assets/logo.png"),
                      //AssetImage("assets/car.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    //color: Colors.blueGrey.shade700,
                  ),
                ),
                title: Text(
                  "MemoScan",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text("New York"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                " MemoScan 2024 tout droits réservés.",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          //
        ],
      ),
    );
  }
  //
}
