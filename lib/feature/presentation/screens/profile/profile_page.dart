import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_calendar/core/resources/resources.dart';
import 'package:test_calendar/feature/presentation/bloc/read_profile/read_profile_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // RepositoryProvider(
        //   create: (context) => ProfileRepo(
        //     dio: RepositoryProvider.of<DioSettings>(context).dio,
        //   ),
        //   child: BlocProvider(
        //     create: (context) => ReadProfileCubit(
        //       repo: RepositoryProvider.of<ProfileRepo>(context),
        //     )..showProfileInfo(),
        //     child:
        Scaffold(
      appBar: AppBar(
        title: const Text('Профиль'),
      ),
      body: BlocBuilder<ReadProfileCubit, ReadProfileState>(
        builder: (context, state) {
          if (state is ReadProfileSuccsess) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(height: 36, width: 36),
                      CircleAvatar(
                        radius: 50,
                        child: Image.asset(
                          AppImages.defaultUserPic,
                          fit: BoxFit.cover,
                        ),
                      ),
                      CircleAvatar(
                        radius: 18,
                        child: GestureDetector(
                          // onTap: () => context.router
                          //     .push(const ReductProfilePageRoute()),
                          child: const Icon(
                            Icons.mode_edit_outline_outlined,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.person_outline),
                  title: Text(state.profileInfo.fullName ?? ''),
                ),
                ListTile(
                  leading: const Icon(Icons.cases_outlined),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(state.profileInfo.positionName ?? ''),
                    ],
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.pie_chart_outline),
                  title: Text(state.profileInfo.departmentName ?? ''),
                ),
                ListTile(
                  leading: const Icon(Icons.mail_outline),
                  title: Text(state.profileInfo.email ?? ''),
                ),
                const Divider(indent: 16, endIndent: 16),
                const ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Выйти'),
                  iconColor: Colors.red,
                  textColor: Colors.red,
                ),
              ],
            );
          }
          if (state is ReadProfileLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return const SizedBox.shrink();
        },
      ),
      // ),
      // ),
    );
  }
}
