import 'package:dict_app/app_level_locator.dart';
import 'package:dict_app/core/network/custom_error_handler.dart';
import 'package:dict_app/features/home/data/models/search_word_model.dart';
import 'package:either_option/either_option.dart';

class WordReposity {
  WordReposity._();
  static WordReposity wordReposityInstance = WordReposity._();

  Future<Either<CustomRequestErrorHandler, List<SearchWordModelResponse>>>
      searchForWord(String input) async {
    try {
      final searchWordRequest =
          await httpHelperInstance.getInAppRequest("/en/$input");
      if (searchWordRequest.statusCode == 200) {
        final wordresponse =
            searchWordModelResponseFromJson(searchWordRequest.body);
        return Right(wordresponse);
      }
      return Left(CustomRequestErrorHandler(
          "Sorry pal, we couldn't find definitions for the word you were looking for."));
    } catch (e) {
      return Left(CustomRequestErrorHandler(e.toString()));
    }
  }

// //store recent words
//   Future<void> storeRecentWords(SearchWordModelResponse recentWord) async {
//     await localDatabaseInstance.isarDBInstance?.writeTxn(() async {
//       await localDatabaseInstance.isarDBInstance?.searchWordModelResponses
//           .put(recentWord);
//     });
//   }

// //get recent words
//   Stream<List<SearchWordModelResponse>>? getRecentWords() async* {
//     yield* localDatabaseInstance.isarDBInstance!.searchWordModelResponses
//         .where()
//         .watch(fireImmediately: true);
//   }

//   //delete all recent
//   Future<void> deleteAllRecent() async {
//     await localDatabaseInstance.isarDBInstance?.writeTxn(() async {
//       await localDatabaseInstance.isarDBInstance?.searchWordModelResponses
//           .where()
//           .deleteAll();
//     });
//   }
}
