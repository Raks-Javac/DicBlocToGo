import 'package:dict_app/app_level_locator.dart';
import 'package:dict_app/core/utils/logger.dart';
import 'package:dict_app/features/home/data/models/search_word_model.dart';
import 'package:dict_app/features/onboarding/repository/user_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeActivityBloc extends Cubit<HomeState> {
  HomeActivityBloc() : super(HomeState.initialState());

  //run init
  runInit() {
    //listen to user repository
    UserRepository().getUsers()?.listen((event) {
      Logger.logInfo(event);
      emit(state.copyWith(username: event[0].username));
    });

    //listen to recent words repository

    wordRepositoryInstance.getRecentWords()?.listen((event) {
      Logger.logInfo(event);

      emit(state.copyWith(recentWordList: event));
    });
  }

  //get currrent user username

  getCurrentUserName() {}

  // add current username to DB

  addUserNameToDB() {}

  // add recent word to DB

  addRecentWordToDB(SearchWordModelResponse recentWord) async {
    await wordRepositoryInstance.storeRecentWords(recentWord);

    // await Future.delayed(const Duration(seconds: 1));
    // localNotificationsInstance.showFlutterNotification(
    //     "New Bookmark Added! 🎉📚", "You've successfully saved a new word");
  }
}

class HomeState {
  String? username;
  List<SearchWordModelResponse>? recentWordList;

  HomeState({this.username, this.recentWordList});

  factory HomeState.initialState() {
    return HomeState();
  }

  HomeState copyWith({
    String? username,
    List<SearchWordModelResponse>? recentWordList,
  }) {
    return HomeState(
      username: username ?? this.username,
      recentWordList: recentWordList ?? this.recentWordList,
    );
  }
}
