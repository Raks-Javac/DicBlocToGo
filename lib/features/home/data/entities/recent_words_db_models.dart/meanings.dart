import 'package:dict_app/features/home/data/entities/recent_words_db_models.dart/definitions.dart';
import 'package:isar/isar.dart';

part 'meanings.g.dart';

@collection
class MeaningEntity {
  Id id = Isar.autoIncrement;
  String? partOfSpeech;

  @Backlink(to: "meaning")
  final definitions = IsarLinks<DefinitionEntity>();
  // final recentW = IsarLinks<RecentWordsEntity>();
}
