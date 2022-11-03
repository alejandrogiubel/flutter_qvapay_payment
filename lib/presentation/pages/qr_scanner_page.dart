import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanner extends StatelessWidget {
  const QrScanner({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
    var scanArea = 300.0;
    QRViewController? controller;
    ValueNotifier<bool> flashOn = ValueNotifier<bool>(false);
    return Scaffold(
      body: Stack(
        children: [
          QRView(
            key: qrKey,
            overlay: QrScannerOverlayShape(
              borderColor: Colors.red,
              borderRadius: 10,
              borderLength: 30,
              borderWidth: 10,
              cutOutSize: scanArea,
            ),
            onQRViewCreated: (qRViewController) {
              controller = qRViewController;
              qRViewController.scannedDataStream.listen((event) {
                if (event.code != null) {
                  qRViewController.stopCamera();
                  qRViewController.dispose();
                  Navigator.pop(context, event.code);
                }
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(
                icon: ValueListenableBuilder(
                  valueListenable: flashOn,
                  builder: (context, value, child) => value
                      ? const Icon(
                          Icons.flashlight_off,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.flashlight_on,
                          color: Colors.white,
                        ),
                ),
                onPressed: () async {
                  await controller?.toggleFlash();
                  flashOn.value = !flashOn.value;
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
