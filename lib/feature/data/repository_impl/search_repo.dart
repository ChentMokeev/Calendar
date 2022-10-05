import 'package:dio/dio.dart';
import 'package:test_calendar/feature/domain/entity/user_entity.dart';

class SearchRepo {
  final Dio dio;

  SearchRepo({required this.dio});

  Future<List<UserEntity>> findUsersByName(String query) async {
    final response = await dio.get('/user/find-all-by-name?name=$query');

    final jsonList = response.data;
    final result = <UserEntity>[];

    for (var i in jsonList) {
      result.add(UserEntity.fromJson(i));
    }
    return result;
  }
}
