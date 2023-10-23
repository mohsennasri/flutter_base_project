import 'package:flutter_base_project/core/utils/constants.dart';
import 'package:flutter_base_project/core/utils/network/provider/dio_client.dart';
import 'package:flutter_base_project/features/authentication/domain/use_cases/login_usecase.dart';

class AuthenticationApiProvider {
  final DioClient _dioClient;

  AuthenticationApiProvider(this._dioClient);

  Future<dynamic> login(LoginParams params) async {
    try {
      final res = await _dioClient.dio.post(Endpoints.loginUrl,
          data: {'userName': params.userName, 'password': params.password});
      return res.data;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
