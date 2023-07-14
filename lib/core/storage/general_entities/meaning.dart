import 'package:dict_app/core/storage/general_entities/definitions.dart';
import 'package:isar/isar.dart';
part 'meaning.g.dart';

@embedded
class Meaning {
  Meaning({
    this.partOfSpeech,
    this.definitions,
  });

  String? partOfSpeech;
  List<Definition>? definitions;

  factory Meaning.fromJson(Map<String, dynamic> json) => Meaning(
        partOfSpeech: json["partOfSpeech"],
        definitions: List<Definition>.from(
            json["definitions"].map((x) => Definition.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "partOfSpeech": partOfSpeech,
        "definitions": List<dynamic>.from(definitions!.map((x) => x.toJson())),
      };
}
