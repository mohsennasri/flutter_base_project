import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  final String token;
  final String refreshToken;

  const LoginEntity({required this.token, required this.refreshToken});

  @override
  List<Object?> get props => [];
}
