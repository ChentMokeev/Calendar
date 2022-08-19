import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:test_calendar/core/error/failure.dart';
import 'package:test_calendar/core/usecases/usecase.dart';
import 'package:test_calendar/feature/search/domain/entity/user.dart';
import 'package:test_calendar/feature/search/domain/repositories/user_repository.dart';

class SearchUser extends Usecase<List<User>, UserName> {
  final UserRepository userRepository;

  SearchUser(this.userRepository);

  @override
  Future<Either<Failure, List<User>>> call(UserName params) async {
    return await userRepository.findUserByName(params.query);
  }
}

class UserName extends Equatable {
  final String query;

  const UserName({required this.query});
  
  @override
  List<Object?> get props => [query];
}