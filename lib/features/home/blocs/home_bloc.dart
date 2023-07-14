import 'package:dict_app/app_level_locator.dart';
import 'package:dict_app/core/utils/logger.dart';
import 'package:dict_app/features/home/data/models/search_word_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeActivityBloc extends Cubit<HomeState> {
  HomeActivityBloc() : super(HomeState.initialState());

  //run init
  runInit() {
    //listen to user repository
    userRepositoryInstance.getUsers()?.listen((event) {
      Logger.logInfo(event);
      emit(state.copyWith(username: event[0].username));
    });
  }

  // add current username to DB

  addUserNameToDB() {}

  // add recent word to DB
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
