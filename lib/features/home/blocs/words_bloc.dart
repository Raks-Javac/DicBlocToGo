import 'package:dict_app/features/home/data/models/search_word_model.dart';
import 'package:dict_app/features/home/repository/words_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class DictionaryState {}

class NotSearchingWordState extends DictionaryState {}

class SearchingWordState extends DictionaryState {}

class WordNotFound extends DictionaryState {}

class WordExistState extends DictionaryState {
  final List<SearchWordModelResponse> words;
  WordExistState(this.words);
// create a constuctor of the model instance
}

class ErrorState extends DictionaryState {
  final String errorMessage;
  ErrorState(this.errorMessage);
}

class DictionaryBloc extends Cubit<DictionaryState> {
  final WordReposity wordReposity;
  DictionaryBloc(this.wordReposity) : super(NotSearchingWordState());
  final TextEditingController wordSearchTextFieldController =
      TextEditingController();

  //search word passed fromUI
  searchWordOnUI() async {
    if (wordSearchTextFieldController.text.trim().isEmpty) {
      emit(NotSearchingWordState());
    } else {
      emit(SearchingWordState());

      final makeRequest =
          await wordReposity.searchForWord(wordSearchTextFieldController.text);

      makeRequest.fold((onLeft) {
        emit(ErrorState(onLeft.message));
      }, (onRIght) {
        emit(WordExistState(onRIght));
      });
    }
  }

  clearTextField() {
    emit(NotSearchingWordState());

    wordSearchTextFieldController.clear();
  }
}
