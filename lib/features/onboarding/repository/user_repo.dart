import 'package:dict_app/app_level_locator.dart';
import 'package:dict_app/features/onboarding/entities/username_model.dart';
import 'package:isar/isar.dart';

abstract class UserRepositoryInterface {
  Future saveUsername(User saveUser);
  Future<String> getCurrentUserName();
}

class UserRepository implements UserRepositoryInterface {
  UserRepository._();

  static UserRepository instance = UserRepository._();
  factory UserRepository() {
    return instance;
  }
  @override
  Future<void> saveUsername(User saveUser) async {
    await localDatabaseInstance.isarDBInstance?.writeTxn(() async {
      await localDatabaseInstance.isarDBInstance?.users.put(saveUser);
    });
  }

  @override
  Future<String> getCurrentUserName() async {
    String? currentUSer;
    await localDatabaseInstance.isarDBInstance?.writeTxn(() async {
      currentUSer =
          (await localDatabaseInstance.isarDBInstance?.users.get(1))?.username;
    });

    return currentUSer ?? "";
  }

  Stream<List<User>>? getUsers() async* {
    yield* localDatabaseInstance.isarDBInstance!.users
        .where()
        .watch(fireImmediately: true);
  }
}
