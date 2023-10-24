import 'package:flutter_base_project/core/utils/shared-preference/shared_preference_helper.dart';
import 'package:flutter_base_project/di/service_locator.dart';
import 'package:flutter_base_project/features/authentication/data/data_source/remote/authentication_api_provider.dart';
import 'package:flutter_base_project/features/authentication/data/repository/authentication_repositoryimpl.dart';
import 'package:flutter_base_project/features/authentication/domain/repository/authentication_repository.dart';

mixin RepositoryModule {
  static Future<void> configureRepositoryModuleInjection() async {
    // // repository:--------------------------------------------------------------
    getIt.registerSingleton<AuthenticationRepository>(
        AuthenticationRepositoryImpl(getIt<AuthenticationApiProvider>(),
            getIt<SharedPreferenceHelper>()));
  }
}
