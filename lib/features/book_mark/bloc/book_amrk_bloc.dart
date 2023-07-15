import 'package:dict_app/app_level_locator.dart';
import 'package:dict_app/core/utils/logger.dart';
import 'package:dict_app/features/book_mark/entity/bookmark_entity.dart';
import 'package:dict_app/features/home/data/models/search_word_model.dart';
import 'package:dict_app/features/recent_words/entitiy/recent_words_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookMarkBloc extends Cubit<BookMarkState> {
  BookMarkBloc() : super(BookMarkState.initialState());

  //run init
  runInit() {
    // //listen to user repository
    bookMarkRepositoryInstance.getAllBookMarks()?.listen((event) {
      Logger.logInfo(event);

      emit(state.copyWith(bookMarkList: event));
      Logger.logInfo("for safe keeping ${state.bookMarkList}");
      if (state.bookMarkList == null) {
        state.copyWith(isBookMarkLoaded: false);
      } else {
        state.copyWith(isBookMarkLoaded: true);
      }

      Logger.logInfo(state.isBookMarkLoaded);
    });
  }

  onLongPressBookMark() {
    emit(state.copyWith(onLongPressBool: !state.onLongPressBool!));
  }

  // add recent word to DB

  addBookMarkToDBFromRecent(RecentWordsEntity bookMarkedWord) async {
    List<String> words = [];
    for (int i = 0; i < state.bookMarkList!.length; i++) {
      words.add(state.bookMarkList![i].word!);
    }
    if (!words.contains(bookMarkedWord.word)) {
      localNotificationsInstance.showFlutterNotification(
          "New Bookmark Added! 🎉📚", "You've successfully saved a new word");
      await bookMarkRepositoryInstance.addToBookMarkFromRecent(bookMarkedWord);
    } else {
      localNotificationsInstance.showFlutterNotification(
          "Bookmark notification", "Word already exist in bookmark");
    }
  }

  addBookMarkToDBFromSearch(SearchWordModelResponse bookMarkedWord) async {
    List<String> words = [];
    for (int i = 0; i < state.bookMarkList!.length; i++) {
      words.add(state.bookMarkList![i].word!);
    }
    if (!words.contains(bookMarkedWord.word)) {
      localNotificationsInstance.showFlutterNotification(
          "New Bookmark Added! 🎉📚", "You've successfully saved a new word");
      await bookMarkRepositoryInstance.addToBookMarkFromSearch(bookMarkedWord);
    } else {
      localNotificationsInstance.showFlutterNotification(
          "Bookmark notification", "Word already exist in bookmark");
    }
  }

  toggleBookMarkState(int index) {
    emit(state.copyWith(t: ""));
    state.bookMarkList![index].selected = !state.bookMarkList![index].selected;
    Logger.logInfo(index);
    List<BookMarkEntity> booksMarkToDelete = state.bookMarkToDelete ?? [];
    if (state.bookMarkList![index].selected == true) {
      booksMarkToDelete.add(state.bookMarkList![index]);
      emit(state.copyWith(bookMarkToDelete: booksMarkToDelete));
    } else {
      booksMarkToDelete.removeLast();
      emit(state.copyWith(bookMarkToDelete: booksMarkToDelete));
    }
    Logger.logInfo(state.bookMarkToDelete);
  }

//clear all recent words
  clearAllBookMarkedWords() async {
    // await bookMarkRepositoryInstance.deleteAllRecent();
    // emit(state.copyWith(recentWordList: []));
  }
}

class BookMarkState {
  List<BookMarkEntity>? bookMarkList;
  bool? isBookMarkLoaded;
  bool? onLongPressBool;
  String? t;

  List<BookMarkEntity>? bookMarkToDelete;

  BookMarkState(
      {this.bookMarkList,
      this.isBookMarkLoaded = false,
      this.onLongPressBool = false,
      this.bookMarkToDelete,
      this.t = ""});

  factory BookMarkState.initialState() {
    return BookMarkState();
  }

  BookMarkState copyWith({
    List<BookMarkEntity>? bookMarkList,
    bool? isBookMarkLoaded,
    bool? onLongPressBool,
    List<BookMarkEntity>? bookMarkToDelete,
    String? t,
  }) {
    return BookMarkState(
        bookMarkList: bookMarkList ?? this.bookMarkList,
        isBookMarkLoaded: isBookMarkLoaded ?? this.isBookMarkLoaded,
        onLongPressBool: onLongPressBool ?? this.onLongPressBool,
        bookMarkToDelete: bookMarkToDelete ?? this.bookMarkToDelete,
        t: t ?? this.t);
  }
}
