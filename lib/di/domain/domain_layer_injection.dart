import 'package:flutter_base_project/di/domain/modules/usecase_module.dart';

mixin DomainLayerInjection {
  static Future<void> configureDomainLayerInjection() async {
    await UseCaseModule.configureUseCaseModuleInjection();
  }
}
