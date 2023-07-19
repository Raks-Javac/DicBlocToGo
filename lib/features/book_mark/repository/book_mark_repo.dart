import 'package:dict_app/app_level_locator.dart';
import 'package:dict_app/core/utils/logger.dart';
import 'package:dict_app/features/book_mark/entity/bookmark_entity.dart';
import 'package:dict_app/features/home/data/models/search_word_model.dart';
import 'package:dict_app/features/recent_words/entitiy/recent_words_entity.dart';
import 'package:isar/isar.dart';

abstract class BookMarkRepositoryInterface {
  Stream<List<BookMarkEntity>>? getAllBookMarks();
  // deleteBookMarkByID(String iD);
  Future<void> removeBookMarkByIDFromBookMark(int bookMarkObjectID);

  filterBookMarkByName(String wordName);
  Future<void> addToBookMarkFromRecent(RecentWordsEntity wordToBooKMark);
  Future<void> addToBookMarkFromSearch(SearchWordModelResponse wordToBooKMark);
  Future<void> deleteSelectedBook(List<BookMarkEntity> selected);
}

class BookMarkRepository implements BookMarkRepositoryInterface {
  BookMarkRepository();
  @override
  addToBookMarkFromRecent(RecentWordsEntity wordToBooKMark) async {
    BookMarkEntity wordModelResponse = BookMarkEntity()
      ..meanings = wordToBooKMark.meanings
      ..phonetic = wordToBooKMark.phonetic
      ..origin = wordToBooKMark.origin
      ..phonetics = wordToBooKMark.phonetics
      ..word = wordToBooKMark.word
      ..id = wordToBooKMark.id;

    await localDatabaseInstance.isarDBInstance?.writeTxn(() async {
      await localDatabaseInstance.isarDBInstance?.bookMarkEntitys
          .put(wordModelResponse);
    });
  }

  @override
  removeBookMarkByIDFromBookMark(int bookMatkID) async {
    Logger.logInfo(bookMatkID);
    await localDatabaseInstance.isarDBInstance?.writeTxn(() async {
      await localDatabaseInstance.isarDBInstance?.bookMarkEntitys
          .delete(bookMatkID);
    });
  }

  @override
  filterBookMarkByName(String wordName) {
    throw UnimplementedError();
  }

  @override
  Stream<List<BookMarkEntity>>? getAllBookMarks() async* {
    yield* localDatabaseInstance.isarDBInstance!.bookMarkEntitys
        .where()
        .watch(fireImmediately: true);
  }

  @override
  Future<void> addToBookMarkFromSearch(
      SearchWordModelResponse wordToBooKMark) async {
    BookMarkEntity wordModelResponse = BookMarkEntity()
      ..meanings = wordToBooKMark.meanings
      ..phonetic = wordToBooKMark.phonetic
      ..origin = wordToBooKMark.origin
      ..phonetics = wordToBooKMark.phonetics
      ..word = wordToBooKMark.word
      ..searchWordBookMarked = wordToBooKMark.word;

    await localDatabaseInstance.isarDBInstance?.writeTxn(() async {
      await localDatabaseInstance.isarDBInstance?.bookMarkEntitys
          .put(wordModelResponse);
    });
  }

  @override
  Future<void> deleteSelectedBook(List<BookMarkEntity> selected) async {
    await localDatabaseInstance.isarDBInstance?.writeTxn(() async {
      List<int> listOfID = [];
      for (var i in selected) {
        listOfID.add(i.id);
      }
      await localDatabaseInstance.isarDBInstance?.bookMarkEntitys
          .deleteAll(listOfID);
    });
  }
}
