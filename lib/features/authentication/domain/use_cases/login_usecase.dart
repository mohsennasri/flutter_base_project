import 'package:flutter_base_project/core/resources/data_state.dart';
import 'package:flutter_base_project/core/usecase/use_case.dart';
import 'package:flutter_base_project/features/authentication/domain/entities/login_entity.dart';
import 'package:flutter_base_project/features/authentication/domain/repository/authentication_repository.dart';

class LoginParams {
  final String userName;
  final String password;

  LoginParams({required this.userName, required this.password});
}

class LoginUseCase extends UseCase<DataState<LoginEntity>, LoginParams> {
  AuthenticationRepository authenticationRepository;

  LoginUseCase(this.authenticationRepository);

  @override
  Future<DataState<LoginEntity>> call(LoginParams params) async {
    return await authenticationRepository.login(params);
  }
}
