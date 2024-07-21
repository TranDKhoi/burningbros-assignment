import 'package:bb_assignment/configs/di/injection.dart';
import 'package:bb_assignment/configs/routes/app_route.dart';
import 'package:bb_assignment/configs/styles/app_theme.dart';
import 'package:bb_assignment/features/app/bloc/app_bloc.dart';
import 'package:bb_assignment/features/app/bloc/app_state_event.dart';
import 'package:bb_assignment/utils/global_keys/keys.dart';
import 'package:bb_assignment/utils/language/language_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appBloc = getIt<AppBloc>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _appBloc),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        bloc: _appBloc,
        buildWhen: (previous, current) {
          return previous.currentLangCode != current.currentLangCode ||
              previous.isDark != current.isDark;
        },
        builder: (context, state) {
          return MaterialApp(
            // this key is needed due to change language, theme
            key: UniqueKey(),
            debugShowCheckedModeBanner: false,

            /// global keys
            navigatorKey: navigatorKey,
            scaffoldMessengerKey: scaffoldMessengerKey,

            /// theme data
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: state.isDark ? ThemeMode.dark : ThemeMode.light,

            /// route navigation
            initialRoute: AppRoute.splashScreen,
            onGenerateRoute: AppRoute.generateRoute,

            /// locales
            locale: Locale(LanguageUtil.currentLanguage),
            supportedLocales: LanguageUtil.supportedLocales,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          );
        },
      ),
    );
  }
}
