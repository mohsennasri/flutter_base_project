import 'package:dio/dio.dart';
import 'package:flutter_base_project/core/resources/data_state.dart';
import 'package:flutter_base_project/core/utils/shared-preference/shared_preference_helper.dart';
import 'package:flutter_base_project/features/authentication/data/data_source/remote/authentication_api_provider.dart';
import 'package:flutter_base_project/features/authentication/data/models/login_model.dart';
import 'package:flutter_base_project/features/authentication/domain/entities/login_entity.dart';
import 'package:flutter_base_project/features/authentication/domain/repository/authentication_repository.dart';
import 'package:flutter_base_project/features/authentication/domain/use_cases/login_usecase.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final AuthenticationApiProvider _apiProvider;
  final SharedPreferenceHelper _sharedPrefsHelper;

  AuthenticationRepositoryImpl(this._apiProvider, this._sharedPrefsHelper);

  @override
  Future<DataState<LoginEntity>> login(LoginParams params) async {
    try {
      Response response = await _apiProvider.login(params);
      if (response.statusCode == 200) {
        LoginEntity entity = LoginModel.fromJson(response.data);
        return DataSuccess(entity);
      } else {
        return const DataFailed('Login Failed ...');
      }
    } catch (e) {
      return const DataFailed('Error');
    }
  }

  @override
  Future<bool> get isLoggedIn => _sharedPrefsHelper.isLoggedIn;
}
