import 'package:dartz/dartz.dart';
import 'package:test_calendar/core/error/failure.dart';
import 'package:test_calendar/core/usecases/usecase.dart';
import 'package:test_calendar/feature/search/domain/entity/user.dart';
import 'package:test_calendar/feature/search/domain/repositories/user_repository.dart';

class GetAllUsers extends Usecase<List<User>, NoParams> {
  final UserRepository userRepository;

  GetAllUsers(this.userRepository);

  @override
  Future<Either<Failure, List<User>>> call(NoParams params) async {
    return await userRepository.getAllUsers();
  }
}