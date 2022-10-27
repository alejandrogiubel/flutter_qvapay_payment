import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanner extends StatelessWidget {
  const QrScanner({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
    return Scaffold(
      body: QRView(
        key: qrKey,
        onQRViewCreated: (qRViewController) {
          qRViewController.scannedDataStream.listen((event) {
            if (event.code != null) {
              qRViewController.stopCamera();
              qRViewController.dispose();
              Navigator.pop(context, event.code);
            }
          });
        },
      ),
    );
  }
}
