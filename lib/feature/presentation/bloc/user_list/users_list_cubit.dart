import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_calendar/feature/data/repository_impl/user_repo.dart';
import 'package:test_calendar/feature/domain/entity/user_entity.dart';

class UsersListCubit extends Cubit<UsersListState> {
  UsersListCubit({required this.repo}) : super(UsersInitial());

  final UserRepo repo;

  showAllUsers() async {
    emit(UsersLoading());
    try {
      final result = await repo.getUsers();
      // await Future.delayed(const Duration(seconds: 2));
      emit(UsersSuccsess(users: result));
    } catch (e) {
      emit(UsersError());
    }
  }
}

abstract class UsersListState {}

class UsersInitial extends UsersListState {}

class UsersLoading extends UsersListState {}

class UsersSuccsess extends UsersListState {
  final List<UserEntity> users;

  UsersSuccsess({required this.users});
}

class UsersError extends UsersListState {}
