import 'package:dict_app/app_level_locator.dart';
import 'package:dict_app/features/recent_words/entitiy/recent_words_entity.dart';
import 'package:isar/isar.dart';

abstract class RecentWordsInterface {
  Future<void> storeRecentWords(RecentWordsEntity recentWord);
  Stream<List<RecentWordsEntity>>? getRecentWords();
  Future<void> deleteAllRecent();
}

class RecentWordRepository implements RecentWordsInterface {
  //store recent words
  @override
  Future<void> storeRecentWords(RecentWordsEntity recentWord) async {
    await localDatabaseInstance.isarDBInstance?.writeTxn(() async {
      await localDatabaseInstance.isarDBInstance?.recentWordsEntitys
          .put(recentWord);
    });
  }

//get recent words
  @override
  Stream<List<RecentWordsEntity>>? getRecentWords() async* {
    yield* localDatabaseInstance.isarDBInstance!.recentWordsEntitys
        .where()
        .watch(fireImmediately: true);
  }

  //delete all recent
  @override
  Future<void> deleteAllRecent() async {
    await localDatabaseInstance.isarDBInstance?.writeTxn(() async {
      await localDatabaseInstance.isarDBInstance?.recentWordsEntitys
          .where()
          .deleteAll();
    });
  }
}
