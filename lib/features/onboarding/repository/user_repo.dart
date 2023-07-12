import 'package:dict_app/app_level_locator.dart';
import 'package:dict_app/features/onboarding/entities/username_model.dart';

abstract class UserRepositoryInterface {
  Future saveUsername(User saveUser);
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
}
