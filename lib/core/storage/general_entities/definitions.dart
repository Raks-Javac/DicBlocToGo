import 'package:isar/isar.dart';
part 'definitions.g.dart';

@embedded
class Definition {
  Definition({
    this.definition,
    this.example,
    this.synonyms,
    this.antonyms,
  });

  String? definition;
  String? example;
  List<String>? synonyms;
  List<String>? antonyms;

  factory Definition.fromJson(Map<String, dynamic> json) => Definition(
        definition: json["definition"],
        example: json["example"],
        synonyms: List<String>.from(json["synonyms"].map((x) => x)),
        antonyms: List<String>.from(json["antonyms"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "definition": definition,
        "example": example,
        "synonyms": List<dynamic>.from(synonyms!.map((x) => x)),
        "antonyms": List<dynamic>.from(antonyms!.map((x) => x)),
      };
}
