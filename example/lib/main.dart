import 'package:flutter/material.dart';
import 'package:flutter_qvapay_payment/flutter_qvapay_payment.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter QvaPay Payment'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {
              FlutterQvapayPayment.showUserQrInfo(
                context,
                'asd',
                'asd',
              );
            },
            child: const Text('Show User QR Info'),
          ),
          ElevatedButton(
            onPressed: () {
              FlutterQvapayPayment.pay(context);
            },
            child: const Text('Pay with QvaPay'),
          ),
        ],
      ),
    );
  }
}
