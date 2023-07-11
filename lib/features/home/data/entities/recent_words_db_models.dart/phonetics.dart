import 'package:dict_app/features/home/data/entities/recent_words_db_models.dart/recent_word.dart';
import 'package:isar/isar.dart';

part 'phonetics.g.dart';

@collection
class PhoneticEntity {
  Id id = Isar.autoIncrement;
  String? text;
  String? audio;

  final recentW = IsarLinks<RecentWordsEntity>();
}
