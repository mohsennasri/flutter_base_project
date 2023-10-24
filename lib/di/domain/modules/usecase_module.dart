import 'package:flutter_base_project/di/service_locator.dart';
import 'package:flutter_base_project/features/authentication/domain/repository/authentication_repository.dart';
import 'package:flutter_base_project/features/authentication/domain/use_cases/login_usecase.dart';

mixin UseCaseModule {
  static Future<void> configureUseCaseModuleInjection() async {
    // authentication:--------------------------------------------------------------------
    getIt.registerSingleton<LoginUseCase>(
      LoginUseCase(getIt<AuthenticationRepository>()),
    );
  }
}
