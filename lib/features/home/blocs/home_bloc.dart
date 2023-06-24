import 'package:flutter_bloc/flutter_bloc.dart';

abstract class HomeState {}

class IsTypingState extends HomeState {}

class NotTypingState extends HomeState {}

class HomeActivityBloc extends Cubit<HomeState> {
  HomeActivityBloc() : super(NotTypingState());

  changeStateBasedOnInput(String value) {
    if (value.isNotEmpty) {
      emit(IsTypingState());
    } else {
      emit(NotTypingState());
    }
  }

  reset() {
    emit(NotTypingState());
  }
}
