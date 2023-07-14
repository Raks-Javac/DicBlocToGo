// To parse this JSON data, do
//
//     final searchWordModelResponse = searchWordModelResponseFromJson(jsonString);

import 'dart:convert';

import 'package:dict_app/core/storage/general_entities/definitions.dart';
import 'package:dict_app/core/storage/general_entities/meaning.dart';
import 'package:dict_app/core/storage/general_entities/phonetics.dart';
import 'package:dict_app/features/book_mark/entity/bookmark_entity.dart';
import 'package:isar/isar.dart';

part 'search_word_model.g.dart';

List<SearchWordModelResponse> searchWordModelResponseFromJson(String str) =>
    List<SearchWordModelResponse>.from(
        json.decode(str).map((x) => SearchWordModelResponse.fromJson(x)));

String searchWordModelResponseToJson(List<SearchWordModelResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@collection
class SearchWordModelResponse {
  SearchWordModelResponse({
    required this.word,
    required this.phonetic,
    required this.phonetics,
    required this.origin,
    required this.meanings,
  });
  Id id = Isar.autoIncrement;
  String word;
  String? phonetic;
  List<Phonetic> phonetics;
  String? origin;
  List<Meaning> meanings;

  factory SearchWordModelResponse.fromJson(Map<String, dynamic> json) =>
      SearchWordModelResponse(
        word: json["word"],
        phonetic: json["phonetic"],
        phonetics: List<Phonetic>.from(
            json["phonetics"].map((x) => Phonetic.fromJson(x))),
        origin: json["origin"],
        meanings: List<Meaning>.from(
            json["meanings"].map((x) => Meaning.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "word": word,
        "phonetic": phonetic,
        "phonetics": List<dynamic>.from(phonetics.map((x) => x.toJson())),
        "origin": origin,
        "meanings": List<dynamic>.from(meanings.map((x) => x.toJson())),
      };
}
