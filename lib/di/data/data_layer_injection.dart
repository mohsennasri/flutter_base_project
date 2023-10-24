import 'package:flutter_base_project/di/data/modules/local_module.dart';
import 'package:flutter_base_project/di/data/modules/network_module.dart';
import 'package:flutter_base_project/di/data/modules/repository_module.dart';

mixin DataLayerInjection {
  static Future<void> configureDataLayerInjection() async {
    await LocalModule.configureLocalModuleInjection();
    await NetworkModule.configureNetworkModuleInjection();
    await RepositoryModule.configureRepositoryModuleInjection();
  }
}
