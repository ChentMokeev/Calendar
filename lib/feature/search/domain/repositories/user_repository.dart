import 'package:dartz/dartz.dart';
import 'package:test_calendar/core/error/failure.dart';
import 'package:test_calendar/feature/search/domain/entity/user.dart';

abstract class UserRepository {
  Future<Either<Failure, List<User>>> getAllUsers();
  Future<Either<Failure, List<User>>> findUserByName(String query);
}
