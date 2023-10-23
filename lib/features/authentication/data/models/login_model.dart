import 'package:flutter_base_project/features/authentication/domain/entities/login_entity.dart';

class LoginModel extends LoginEntity {
  const LoginModel({required String token, required String refreshToken})
      : super(token: token, refreshToken: refreshToken);

  factory LoginModel.fromJson(dynamic json) {
    return LoginModel(
        token: json['token'] ?? '', refreshToken: json['refreshToken'] ?? '');
  }
}
