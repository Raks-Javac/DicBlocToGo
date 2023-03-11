import 'package:dict_app/app_level_locator.dart';
import 'package:dict_app/core/network/custom_error_handler.dart';
import 'package:dict_app/features/data/models/search_word_model.dart';
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
      return Left(CustomRequestErrorHandler(""));
    } catch (e) {
      return Left(CustomRequestErrorHandler(e.toString()));
    }
  }
}
