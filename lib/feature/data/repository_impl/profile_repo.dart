import 'package:dio/dio.dart';
import 'package:test_calendar/feature/domain/entity/profile_info.dart';

class ProfileRepo {
  final Dio dio;

  ProfileRepo({required this.dio});

  Future<ProfileInfo> getProfileInfo() async {
    final response = await dio.get('/user/readProfile/1');
    final result = ProfileInfo.fromJson(response.data[0]);

    return result;
  }
}
