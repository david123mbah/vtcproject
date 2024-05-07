import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qr_mobile_vision/qr_camera.dart';
import 'package:testproject/utils/constants/image_strings.dart';

class ScanQrCodeScreen extends StatelessWidget {
  const ScanQrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Scan QR Code",
        ),
        centerTitle: true,
        leading: Container(
            margin: const EdgeInsets.only(left: 15),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Iconsax.arrow_left))),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 50, bottom: 250, top: 150),
                child: SizedBox(
                    width: 230,
                    height: 230,
                    child: QrCamera(
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                        ),
                        onError: (context, error) => Text(
                              error.toString(),
                              style: const TextStyle(color: Colors.red),
                            ),
                        qrCodeCallback: (code) {
                          Navigator.pop(context, code);
                        })),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                  padding: const EdgeInsets.all(25),
                  // color: Colors.red,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Retake",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 30),
                            child: const Image(
                                image: AssetImage(TImages.cameraSnap))),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Confirm",
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
