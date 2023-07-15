import 'package:dict_app/core/storage/general_entities/definitions.dart';
import 'package:dict_app/core/storage/general_entities/meaning.dart';
import 'package:dict_app/core/storage/general_entities/phonetics.dart';
import 'package:isar/isar.dart';

part 'recent_words_entity.g.dart';

@Collection()
class RecentWordsEntity {
  Id id = Isar.autoIncrement;
  String? word;
  String? phonetic;
  List<Phonetic>? phonetics;
  String? origin;
  List<Meaning>? meanings;
  bool isBookMarked = false;
}
