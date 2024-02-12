import 'package:flutter/material.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        title: Text("MemoScan"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/image_logo.jpeg"),
            ElevatedButton(
              onPressed: () {
                //
                showModalBottomSheet(
                    context: context,
                    isDismissible: true,
                    showDragHandle: true,
                    builder: (c) {
                      return Container(
                        height: double.maxFinite,
                        width: double.maxFinite,
                        color: Colors.amber,
                        padding: EdgeInsets.all(10),
                        child: QRCodeDartScanView(
                          scanInvertedQRCode:
                              true, // enable scan invert qr code ( default = false)
                          typeScan: TypeScan
                              .live, // if TypeScan.takePicture will try decode when click to take a picture (default TypeScan.live)
                          // takePictureButtonBuilder: (context,controller,isLoading){ // if typeScan == TypeScan.takePicture you can customize the button.
                          //    if(loading) return CircularProgressIndicator();
                          //    return ElevatedButton(
                          //       onPressed:controller.takePictureAndDecode,
                          //       child:Text('Take a picture'),
                          //    );
                          // }
                          // resolutionPreset: = QrCodeDartScanResolutionPreset.high,
                          // formats: [ // You can restrict specific formats.
                          //   BarcodeFormat.QR_CODE,
                          //   BarcodeFormat.AZTEC,
                          //   BarcodeFormat.DATA_MATRIX,
                          //   BarcodeFormat.PDF_417,
                          //   BarcodeFormat.CODE_39,
                          //   BarcodeFormat.CODE_93,
                          //   BarcodeFormat.CODE_128,
                          //  BarcodeFormat.EAN_8,
                          //   BarcodeFormat.EAN_13,
                          // ],
                          onCapture: (Result result) {
                            // do anything with result
                            // result.text
                            // result.rawBytes
                            // result.resultPoints
                            // result.format
                            // result.numBits
                            // result.resultMetadata
                            // result.time
                          },
                        ),
                      );
                    });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo),
              ),
              child: Container(
                height: 48,
                width: 150,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Icon(
                    //   Icons.qr_code,
                    // ),
                    Text("Scanner"),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.indigo.shade700,
        //backgroundColor: Colors.green,
        onTap: (e) {
          //
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: "Scan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "Infos",
          ),
        ],
      ),
    );
  }
  //
}
