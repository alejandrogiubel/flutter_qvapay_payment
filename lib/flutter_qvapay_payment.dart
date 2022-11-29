import 'package:flutter/material.dart';
import 'package:flutter_qvapay_payment/data/repository/qvapay_repository.dart';
import 'package:flutter_qvapay_payment/presentation/pages/user_info_qr_page.dart';

import 'presentation/pages/pages.dart';

class FlutterQvapayPayment {
  static Future<void> showUserQrInfo(
    BuildContext context,
    String email,
    String password,
  ) async {
    QvaPayRepository()
        .login(
      email: email,
      password: password,
    )
        .then(
      (value) {
        if (value != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserInfoQrPage(
                meModel: value.me,
              ),
            ),
          );
        }
      },
    );
  }

  static Future<String?> pay(BuildContext context) async {
    // sacar el qr scanner y leer el codigo uuid
    // autenticarse
    // crear la transaccion
    // efectuar pago
    // mostrar resultado del pago.
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
