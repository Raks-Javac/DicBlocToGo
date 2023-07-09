abstract class LocalDataBaseInterface {
  initializeDatabase();
  Future writeToDb();
  Future readFromDb();
}

class LocalDatabaseIsar implements LocalDataBaseInterface {
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
