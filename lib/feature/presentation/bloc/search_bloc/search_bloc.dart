import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_calendar/feature/data/repository_impl/search_repo.dart';
import 'package:test_calendar/feature/domain/entity/user_entity.dart';

part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({required this.repo}) : super(const SearchState.initial()) {
    on<_SearchUser>((event, emit) async {
      emit(const SearchState.loading());

      try {
        final result = await repo.findUsersByName(event.query.trim());
        await Future.delayed(const Duration(seconds: 2));
        emit(SearchState.succsess(users: result));
      } catch (e) {
        emit(const SearchState.error());
      }
    });
  }

  final SearchRepo repo;
}

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.succsess({
    required List<UserEntity> users,
  }) = _Succses;
  const factory SearchState.error({
    @Default('Unexpexted Error') String message,
  }) = _Error;
}

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchUser({
    @Default('') String query,
  }) = _SearchUser;
}
