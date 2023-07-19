import 'package:dict_app/core/storage/general_entities/definitions.dart';
import 'package:dict_app/core/storage/general_entities/meaning.dart';
import 'package:dict_app/core/storage/general_entities/phonetics.dart';
import 'package:isar/isar.dart';

part 'bookmark_entity.g.dart';

@Collection()
class BookMarkEntity {
  Id id = Isar.autoIncrement;
  String? word;
  String? phonetic;
  List<Phonetic>? phonetics;
  String? origin;
  List<Meaning>? meanings;
  bool selected = false;
  bool isBookMarked = true;
  String? searchWordBookMarked;
}
