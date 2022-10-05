import 'package:dio/dio.dart';
import 'package:test_calendar/feature/domain/entity/user_entity.dart';
import 'package:test_calendar/feature/domain/repositories/user_repository.dart';

class UserApi {
  final Dio dio;

  UserApi({required this.dio});

  Future<UserRepoResult> findUserByName(String query) =>
      _getUserByUrl('/user/find-all-by-name?name=$query');

  Future<UserRepoResult> getAllUsers() => _getUserByUrl('');

  Future<UserRepoResult> _getUserByUrl(String url) async {
    final results = await dio.get(url);
    final jsonList = results.data;
    final users = <UserEntity>[];
    for (var user in jsonList) {
      users.add(UserEntity.fromJson(user));
    }
    return UserRepoResult(model: users);
  }
}
