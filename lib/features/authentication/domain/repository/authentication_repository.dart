import 'package:flutter_base_project/core/resources/data_state.dart';
import 'package:flutter_base_project/features/authentication/domain/entities/login_entity.dart';
import 'package:flutter_base_project/features/authentication/domain/use_cases/login_usecase.dart';

abstract class AuthenticationRepository {
  Future<DataState<LoginEntity>> login(LoginParams params);
  Future<bool> get isLoggedIn;
}
