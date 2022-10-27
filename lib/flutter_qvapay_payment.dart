import 'package:flutter/material.dart';
import 'package:flutter_qvapay_payment/pages/confirm_payment.dart';
import 'package:flutter_qvapay_payment/pages/qr_scanner.dart';

class FlutterQvapayPayment {
  static Future<String?> pay(BuildContext context) async {
    // sacar el qr scanner y leer el codigo uuid
    // autenticarse
    // crear la transaccion
    // efectuar pago
    // mostrar resultado del pago
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const QrScanner(),
      ),
    ).then((uuid) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ConfirmPayment(uuid: uuid),
        ),
      );
    });
  }
}
