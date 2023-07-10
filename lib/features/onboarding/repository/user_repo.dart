import 'package:dict_app/core/storage/local_database.dart';

abstract class UserRepositoryInterface {
  Future getUsername();
}

class UserRepository implements UserRepositoryInterface {
  WLocalDatabase localDatabaseIsar;
  UserRepository(this.localDatabaseIsar) : super();
  @override
  Future getUsername() async {
    final userName = await localDatabaseIsar.readFromDb();
    return userName;
  }
}
