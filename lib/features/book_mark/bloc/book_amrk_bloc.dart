import 'package:dict_app/app_level_locator.dart';
import 'package:dict_app/core/utils/logger.dart';
import 'package:dict_app/features/book_mark/entity/bookmark_entity.dart';
import 'package:dict_app/features/home/data/models/search_word_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookMarkBloc extends Cubit<BookMarkState> {
  BookMarkBloc() : super(BookMarkState.initialState());

  //run init
  runInit() {
    // //listen to user repository
    bookMarkRepositoryInstance.getAllBookMarks()?.listen((event) {
      Logger.logInfo(event);
      emit(state.copyWith(bookMarkList: event));
    });
  }

  // add recent word to DB

  addBookMarkToDB(SearchWordModelResponse bookMarkedWord) async {
    await bookMarkRepositoryInstance.addToBookMark(bookMarkedWord);
    localNotificationsInstance.showFlutterNotification(
        "New Bookmark Added! 🎉📚", "You've successfully saved a new word");
  }

//clear all recent words
  clearAllBookMarkedWords() async {
    // await bookMarkRepositoryInstance.deleteAllRecent();
    // emit(state.copyWith(recentWordList: []));
  }
}

class BookMarkState {
  List<BookMarkEntity>? bookMarkList;

  BookMarkState({this.bookMarkList});

  factory BookMarkState.initialState() {
    return BookMarkState();
  }

  BookMarkState copyWith({
    List<BookMarkEntity>? bookMarkList,
  }) {
    return BookMarkState(
      bookMarkList: bookMarkList ?? this.bookMarkList,
    );
  }
}
