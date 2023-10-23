import 'package:flutter_base_project/core/utils/constants.dart';
import 'package:flutter_base_project/core/utils/network/configs/dio_configs.dart';
import 'package:flutter_base_project/core/utils/network/interceptors/auth_interceptor.dart';
import 'package:flutter_base_project/core/utils/network/provider/dio_client.dart';
import 'package:flutter_base_project/core/utils/network/rest_client.dart';
import 'package:flutter_base_project/core/utils/shared-preference/shared_preference_helper.dart';
import 'package:flutter_base_project/dependency_injection/service_locator.dart';
import 'package:flutter_base_project/features/authentication/data/data_source/remote/authentication_api_provider.dart';

mixin NetworkModule {
  static Future<void> configureNetworkModuleInjection() async {
    // // event bus:---------------------------------------------------------------
    // getIt.registerSingleton<EventBus>(EventBus());

    // // interceptors:------------------------------------------------------------
    // getIt.registerSingleton<LoggingInterceptor>(LoggingInterceptor());
    // getIt.registerSingleton<ErrorInterceptor>(ErrorInterceptor(getIt()));
    getIt.registerSingleton<AuthInterceptor>(
      AuthInterceptor(
        accessToken: () async =>
            await getIt<SharedPreferenceHelper>().authToken,
        refreshToken: () async =>
            await getIt<SharedPreferenceHelper>().refreshToken,
      ),
    );

    // rest client:-------------------------------------------------------------
    getIt.registerSingleton(RestClient());

    // dio:---------------------------------------------------------------------
    getIt.registerSingleton<DioConfigs>(
      const DioConfigs(
        baseUrl: Endpoints.baseUrl,
        connectionTimeout: Endpoints.connectionTimeout,
        receiveTimeout: Endpoints.receiveTimeout,
      ),
    );
    getIt.registerSingleton<DioClient>(
      DioClient(dioConfigs: getIt())
        ..addInterceptors(
          [
            getIt<AuthInterceptor>(),
            // getIt<ErrorInterceptor>(),
            // getIt<LoggingInterceptor>(),
          ],
        ),
    );

    // api's:-------------------------------------------------------------------
    getIt.registerSingleton(AuthenticationApiProvider(getIt<DioClient>()));
  }
}
