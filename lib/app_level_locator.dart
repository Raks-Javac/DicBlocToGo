import 'package:dict_app/core/network/http_helpers.dart';
import 'package:dict_app/core/notifications/local_notifications.dart';
import 'package:dict_app/core/storage/local_database.dart';
import 'package:dict_app/features/book_mark/bloc/book_amrk_bloc.dart';
import 'package:dict_app/features/book_mark/repository/book_mark_repo.dart';
import 'package:dict_app/features/home/blocs/home_bloc.dart';
import 'package:dict_app/features/home/blocs/words_bloc.dart';
import 'package:dict_app/features/home/repository/words_repository.dart';
import 'package:dict_app/features/onboarding/bloc/onboarding_provider.dart';
import 'package:dict_app/features/onboarding/repository/user_repo.dart';
import 'package:dict_app/features/recent_words/repository/recent_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

import 'shared/res/res.dart';

final wordRepositoryInstance = WordReposity.wordReposityInstance;
final httpHelperInstance = HttpCustomHandler.httpInstance;
final localDatabaseInstance = WLocalDatabase.instance;
final localNotificationsInstance = LocalNotifications.instance;
final userRepositoryInstance = UserRepository();
final bookMarkRepositoryInstance = BookMarkRepository();
final recentWordsRepositoryInstance = RecentWordRepository();

List<SingleChildWidget> blocproviders() {
  return [
    BlocProvider<DictionaryBloc>(
      create: (BuildContext context) => DictionaryBloc(wordRepositoryInstance),
    ),
    BlocProvider(create: (BuildContext context) => ThemeBloc()),
    BlocProvider(create: (BuildContext context) => HomeActivityBloc()),
    BlocProvider(create: (BuildContext context) => BookMarkBloc()),
    BlocProvider(
        create: (BuildContext context) =>
            OnBoardingCubit(localDatabaseInstance)),
  ];
}
