import 'package:flutter_base_project/dependency_injection/service_locator.dart';

mixin RepositoryModule {
  static Future<void> configureRepositoryModuleInjection() async {
    // // repository:--------------------------------------------------------------
    // getIt.registerSingleton<SettingRepository>(SettingRepositoryImpl(
    //   getIt<SharedPreferenceHelper>(),
    // ));

    // getIt.registerSingleton<UserRepository>(UserRepositoryImpl(
    //   getIt<SharedPreferenceHelper>(),
    // ));

    // getIt.registerSingleton<PostRepository>(PostRepositoryImpl(
    //   getIt<PostApi>(),
    //   getIt<PostDataSource>(),
    // ));
  }
}
