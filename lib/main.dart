import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_project/core/widgets/main_wrapper.dart';
import 'package:flutter_base_project/di/service_locator.dart';
import 'package:flutter_base_project/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:flutter_base_project/l10n/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setPreferredOrientations();
  await ServiceLocator.configureDependencies();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (_) => getIt<AuthenticationBloc>(),
      ),
    ],
    child: const MyApp(),
  ));
}

Future<void> setPreferredOrientations() {
  return SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: L10n.all,
        locale: const Locale('en'),
        home: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => getIt<AuthenticationBloc>(),
            ),
          ],
          child: const MainWrapper(),
        ));
  }
}
