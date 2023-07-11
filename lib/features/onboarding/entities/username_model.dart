import 'package:isar/isar.dart';

part 'username_model.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  String? username;
}
