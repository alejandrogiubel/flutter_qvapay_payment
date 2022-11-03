import 'package:flutter/material.dart';
import 'package:flutter_qvapay_payment/data/models/me_model.dart';
import 'package:qr_flutter/qr_flutter.dart';

class UserInfoQrPage extends StatelessWidget {
  const UserInfoQrPage({
    super.key,
    required this.meModel,
  });

  final MeModel meModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(meModel.name),
            Text(meModel.username),
            CircleAvatar(
              backgroundImage: Image.network(
                meModel.profilePhotoUrl,
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.person,
                ),
              ).image,
              maxRadius: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: QrImage(
                data: meModel.toJson().toString(),
                version: QrVersions.auto,
                eyeStyle: const QrEyeStyle(
                  eyeShape: QrEyeShape.circle,
                  color: Colors.grey,
                ),
                dataModuleStyle: const QrDataModuleStyle(
                  dataModuleShape: QrDataModuleShape.circle,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
