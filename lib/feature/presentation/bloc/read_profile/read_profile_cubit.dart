import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_calendar/feature/data/repository_impl/profile_repo.dart';
import 'package:test_calendar/feature/domain/entity/profile_info.dart';

class ReadProfileCubit extends Cubit<ReadProfileState> {
  ReadProfileCubit({required this.repo}) : super(ReadProfileInitial());

  final ProfileRepo repo;

  showProfileInfo() async {
    emit(ReadProfileLoading());
    try {
      final result = await repo.getProfileInfo();
      // await Future.delayed(const Duration(seconds: 2));
      emit(ReadProfileSuccsess(profileInfo: result));
    } catch (e) {
      emit(ReadProfileError());
    }
  }
}

abstract class ReadProfileState {}

class ReadProfileInitial extends ReadProfileState {}

class ReadProfileLoading extends ReadProfileState {}

class ReadProfileSuccsess extends ReadProfileState {
  final ProfileInfo profileInfo;

  ReadProfileSuccsess({required this.profileInfo});
}

class ReadProfileError extends ReadProfileState {}
