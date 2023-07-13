import 'package:dict_app/features/home/data/models/search_word_model.dart';
import 'package:isar/isar.dart';

part 'bookmark_entity.g.dart';

@Collection()
class BookMarkEntity {
  Id id = Isar.autoIncrement;
  @Backlink(to: "bookMark")
  final wordsObject = IsarLink<SearchWordModelResponse>();
}
