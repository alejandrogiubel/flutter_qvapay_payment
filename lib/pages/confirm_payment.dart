import 'package:flutter/material.dart';
import 'package:flutter_qvapay_payment/pages/result_payment.dart';

class ConfirmPayment extends StatelessWidget {
  const ConfirmPayment({
    super.key,
    required this.uuid,
  });
  final String uuid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TextField(),
            const TextField(),
            const TextField(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResultPayment(),
                  ),
                );
              },
              child: const Text('Confirmar pago'),
            )
          ],
        ),
      ),
    );
  }
}
