import 'package:dict_app/core/utils/logger.dart';
import 'package:dict_app/features/book_mark/entity/bookmark_entity.dart';
import 'package:dict_app/features/home/data/models/search_word_model.dart';
import 'package:dict_app/features/onboarding/entities/username_model.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

abstract class LocalDataBaseInterface {
  initializeDatabase();
}

class WLocalDatabase implements LocalDataBaseInterface {
  Isar? isarDBInstance;
  WLocalDatabase._();

  static WLocalDatabase instance = WLocalDatabase._();

  factory WLocalDatabase() {
    return instance;
  }

  @override
  initializeDatabase() async {
    final dir = await getApplicationDocumentsDirectory();
    isarDBInstance = await Isar.open(
      //UsernameSchema, RecentWord Schema and BookMarkSchema
      [
        UserSchema,
        SearchWordModelResponseSchema,
        BookMarkEntitySchema,
      ],
      directory: dir.path,
    );

    Logger.logInfo(isarDBInstance);
    Logger.logInfo(dir.path);
  }
}
