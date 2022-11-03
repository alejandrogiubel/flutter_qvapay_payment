import 'package:flutter/material.dart';

class ResultPayment extends StatelessWidget {
  const ResultPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Result Payment'),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Ok'),
            )
          ],
        ),
      ),
    );
  }
}
