import 'package:dict_app/features/home/data/entities/recent_words_db_models.dart/meanings.dart';
import 'package:dict_app/features/home/data/entities/recent_words_db_models.dart/phonetics.dart';
import 'package:isar/isar.dart';

part 'recent_word.g.dart';

@collection
class RecentWordsEntity {
  Id id = Isar.autoIncrement;
  String? word;
  String? phonetic;

  final phonetiss = IsarLinks<PhoneticEntity>();
  String? origin;

  final meanings = IsarLinks<MeaningEntity>();
}
