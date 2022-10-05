import 'package:dio/dio.dart';
import 'package:test_calendar/feature/domain/entity/user_entity.dart';

class UserRepo {
  final Dio dio;

  UserRepo({required this.dio});

  Future<List<UserEntity>> getUsers() async {
    final response = await dio.get('/user/find-all-for-mobile');

    final jsonList = response.data;
    final result = <UserEntity>[];

    for (var i in jsonList) {
      result.add(UserEntity.fromJson(i));
    }
    return result;
  }
}
