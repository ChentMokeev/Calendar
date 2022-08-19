import 'package:test_calendar/feature/search/data/models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<List<UserModel>> getAllUsers();
  Future<List<UserModel>> findUserByName(String query);
}

class UserRemoteDataSourceDio implements UserRemoteDataSource {
  @override
  Future<List<UserModel>> findUserByName(String query) async {
    throw UnimplementedError();
  }

  @override
  Future<List<UserModel>> getAllUsers() async {
    throw UnimplementedError();
  }

}