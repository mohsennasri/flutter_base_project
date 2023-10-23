import 'package:flutter_base_project/dependency_injection/presentation/modules/bloc_module.dart';

mixin PresentationLayerInjection {
  static Future<void> configurePresentationLayerInjection() async {
    await BlocModule.configureStoreModuleInjection();
  }
}
