import 'package:flutter_base_project/dependency_injection/data/data_layer_injection.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

mixin ServiceLocator {
  static Future<void> configureDependencies() async {
    await DataLayerInjection.configureDataLayerInjection();
    // await DomainLayerInjection.configureDomainLayerInjection();
    // await PresentationLayerInjection.configurePresentationLayerInjection();
  }
}
