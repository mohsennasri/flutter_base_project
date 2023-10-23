import 'package:flutter_base_project/dependency_injection/service_locator.dart';
import 'package:flutter_base_project/features/authentication/presentation/bloc/authentication_bloc.dart';

mixin BlocModule {
  static Future<void> configureStoreModuleInjection() async {
    // bloc:---------------------------------------------------------------
    getIt.registerSingleton<AuthenticationBloc>(AuthenticationBloc());
  }
}
