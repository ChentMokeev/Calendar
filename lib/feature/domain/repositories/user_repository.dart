import 'package:test_calendar/feature/domain/entity/app_error_entity.dart';
import 'package:test_calendar/feature/domain/entity/user_entity.dart';

abstract class UserRepository {
  Future<UserRepoResult> getAllUsers();
  Future<UserRepoResult> findUserByName({required String query});
}

class UserRepoResult {
  UserRepoResult({
    this.error,
    this.model,
  });

  final AppErrorEntity? error;
  final List<UserEntity>? model;
}
