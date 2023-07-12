import 'package:dict_app/core/network/http_helpers.dart';
import 'package:dict_app/core/notifications/local_notifications.dart';
import 'package:dict_app/core/storage/local_database.dart';
import 'package:dict_app/features/home/blocs/words_bloc.dart';
import 'package:dict_app/features/home/repository/words_repository.dart';
import 'package:dict_app/features/onboarding/bloc/onboarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

import 'shared/res/res.dart';

final wordRepositoryInstance = WordReposity.wordReposityInstance;
final httpHelperInstance = HttpCustomHandler.httpInstance;
final localDatabaseInstance = WLocalDatabase.instance;
final localNotificationsInstance = LocalNotifications.instance;

List<SingleChildWidget> blocproviders() {
  return [
    BlocProvider<DictionaryBloc>(
      create: (BuildContext context) => DictionaryBloc(wordRepositoryInstance),
    ),
    BlocProvider(create: (BuildContext context) => ThemeBloc()),
    BlocProvider(
        create: (BuildContext context) =>
            OnBoardingCubit(localDatabaseInstance)),
  ];
}
