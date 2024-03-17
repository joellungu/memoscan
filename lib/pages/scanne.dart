import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memoscan/pages/profil/profil.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';

import 'proches/bio_defunt_controller.dart';

class Scanne extends StatelessWidget {
  //
  BioDefuntController controller = Get.find();
  //
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            //
            Get.back();
            //
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: QRCodeDartScanView(
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
          print("resultat: ${result.text}");
          //Get.snackbar("", result.text);
          //
          Get.back();
          Get.dialog(
            const Center(
              child: SizedBox(
                height: 40,
                width: 40,
                child: CircularProgressIndicator(),
              ),
            ),
          );
          controller.scanQrCode(result.text);
          //Get.to(Profil());
          //
        },
        child: Center(
          child: Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.red.shade700, width: 2),
            ),
          ),
        ),
      ),
    );
  }
  //
}
