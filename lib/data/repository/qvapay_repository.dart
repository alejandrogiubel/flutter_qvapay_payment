import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_qvapay_payment/data/models/login_response_model.dart';

class QvaPayRepository {
  Future<LoginResponseModel?> login({
    required String email,
    required String password,
  }) async {
    try {
      var response = await Dio().post(
        'https://qvapay.com/api/auth/login',
        data: {"email": email, "password": password},
      );
      if (response.statusCode == 200) {
        return LoginResponseModel.fromJson(response.data);
      }
    } catch (e) {
      log(e.toString(), name: 'QvaPayRepository.login');
    }
    return null;
  }
}
