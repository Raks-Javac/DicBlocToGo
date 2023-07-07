import 'package:dict_app/app_level_locator.dart';
import 'package:dict_app/core/navigation/navigation_1.0.dart';
import 'package:dict_app/core/navigation/router_named_system.dart';
import 'package:dict_app/core/navigation/routes.dart';
import 'package:dict_app/core/utils/bloc_observer.dart';
import 'package:dict_app/features/home/blocs/words_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'shared/res/res.dart';

void main() {
  AppBlocObserver.internal();
  runApp(const KnowMoreApp());
}

class KnowMoreApp extends StatelessWidget {
  const KnowMoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<DictionaryBloc>(
                create: (BuildContext context) =>
                    DictionaryBloc(wordRepositoryInstance),
              ),
              BlocProvider(create: (BuildContext context) => ThemeBloc()),
            ],
            child: BlocBuilder<ThemeBloc, ThemeData>(builder: (context, theme) {
              return MaterialApp(
                onGenerateRoute: WRouter.generateRoutes,
                initialRoute: WRoutes.splashScreen,
                debugShowCheckedModeBanner: false,
                scaffoldMessengerKey: WNavigator.scaffoldMessengerKey,
                title: WStrings.appName,
                theme: theme == DictTheme.lightMode
                    ? DictTheme.lightMode
                    : DictTheme.darkMode,
                navigatorKey: WNavigator.navigatorKey,
              );
            }),
          );
        });
  }
}
