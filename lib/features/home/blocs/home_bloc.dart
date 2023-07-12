import 'package:flutter_bloc/flutter_bloc.dart';

class HomeActivityBloc extends Cubit<HomeState> {
  HomeActivityBloc() : super(HomeState.initialState());

  //run init
  runInit() {}

  //get currrent user username

  getCurrentUserName() {}

  // add current username to DB

  addUserNameToDB() {}
}

class HomeState {
  String? username;

  HomeState({this.username = ""});

  factory HomeState.initialState() {
    return HomeState();
  }

  HomeState copyWith({
    String? username,
  }) {
    return HomeState(
      username: username ?? this.username,
    );
  }
}
