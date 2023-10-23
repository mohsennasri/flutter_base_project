part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationEvent {}

class LoginEvent extends AuthenticationEvent {
  final String userName;
  final String password;

  LoginEvent(this.userName, this.password);
}
