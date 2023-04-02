import 'package:dict_app/app_level_locator.dart';
import 'package:dict_app/core/navigation/go_router.dart';
import 'package:dict_app/features/home/blocs/words_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'shared/res/res.dart';

void main() {
  runApp(const KnowMoreApp());
}

class KnowMoreApp extends StatelessWidget {
  const KnowMoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DictionaryBloc>(
          create: (BuildContext context) =>
              DictionaryBloc(wordRepositoryInstance),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: DRouterClass.scaffoldMessengerKey,
        title: PStrings.appName,
        theme: DictTheme.lightMode,
        routerConfig: DRouterClass.routerInstance.router,
      ),
    );
  }
}
