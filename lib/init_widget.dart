import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:test_calendar/core/dio/dio_settings.dart';
import 'package:test_calendar/feature/data/repository_impl/search_repo.dart';
import 'package:test_calendar/feature/data/repository_impl/user_repo.dart';
import 'package:test_calendar/feature/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:test_calendar/feature/presentation/bloc/user_list/users_list_cubit.dart';
import 'package:test_calendar/feature/presentation/screens/meeting_add/vm.dart';

class InitWidget extends StatelessWidget {
  const InitWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => DioSettings()),
        RepositoryProvider(
          create: (context) => SearchRepo(
            dio: RepositoryProvider.of<DioSettings>(context).dio,
          ),
        ),
        RepositoryProvider(
          create: (context) => UserRepo(
            dio: RepositoryProvider.of<DioSettings>(context).dio,
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => UsersListCubit(
              repo: RepositoryProvider.of<UserRepo>(context),
            ),
          ),
          BlocProvider(
            create: (context) => SearchBloc(
              repo: RepositoryProvider.of<SearchRepo>(context),
            ),
          ),
        ],
        child: ChangeNotifierProvider(
          create: (context) => NewMeetingVM(),
          child: child,
        ),
      ),
    );
  }
}
