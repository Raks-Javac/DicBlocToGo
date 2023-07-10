abstract class LocalDataBaseInterface {
  initializeDatabase();
  Future writeToDb();
  Future readFromDb();
}

class WLocalDatabase implements LocalDataBaseInterface {
  WLocalDatabase._();

  factory WLocalDatabase() {
    return WLocalDatabase._();
  }
  @override
  Future readFromDb() {
    throw UnimplementedError();
  }

  @override
  Future writeToDb() {
    throw UnimplementedError();
  }

  @override
  initializeDatabase() {
    throw UnimplementedError();
  }
}
