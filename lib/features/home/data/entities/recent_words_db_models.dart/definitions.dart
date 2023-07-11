import 'package:dict_app/features/home/data/entities/recent_words_db_models.dart/meanings.dart';
import 'package:isar/isar.dart';

part 'definitions.g.dart';

@collection
class DefinitionEntity {
  Id id = Isar.autoIncrement;
  String? definition;
  String? example;
  List<String>? synonyms;
  List<String>? antonyms;
  final meaning = IsarLink<MeaningEntity>();
}
