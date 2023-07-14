import 'package:dict_app/app_level_locator.dart';
import 'package:dict_app/core/utils/logger.dart';
import 'package:dict_app/features/home/data/models/search_word_model.dart';
import 'package:dict_app/features/recent_words/bloc/recent_word_state.dart';
import 'package:dict_app/features/recent_words/entitiy/recent_words_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecentWordsBloc extends Cubit<RecentWordState> {
  RecentWordsBloc() : super(RecentWordState.initialState());

  //run init
  runInit() {
    //listen to recent words repository

    recentWordsRepositoryInstance.getRecentWords()?.listen((event) {
      Logger.logInfo(event);

      emit(state.copyWith(recentWordList: event));
    });
  }

  addRecentWordToDB(SearchWordModelResponse clickedWord) async {
    final recentWord = RecentWordsEntity()
      ..meanings = clickedWord.meanings
      ..origin = clickedWord.origin
      ..phonetic = clickedWord.phonetic
      ..word = clickedWord.word
      ..phonetics = clickedWord.phonetics;
    List<String> words = [];
    for (int i = 0; i < state.recentWordList!.length; i++) {
      words.add(state.recentWordList![i].word!);
    }
    if (!words.contains(clickedWord.word)) {
      await recentWordsRepositoryInstance.storeRecentWords(recentWord);
    } else {}
  }

//clear all recent words
  clearAllRecentWords() async {
    await recentWordsRepositoryInstance.deleteAllRecent();
    emit(state.copyWith(recentWordList: []));
  }
}
