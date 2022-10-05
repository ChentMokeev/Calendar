import 'package:flutter/material.dart';
import 'package:test_calendar/core/resources/resources.dart';
import 'package:test_calendar/feature/domain/entity/user_entity.dart';
import 'package:test_calendar/feature/presentation/widgets/search_bar.dart';

part 'widgets/meeting_tile.dart';
part 'widgets/my_tab_bar.dart';
part 'widgets/user_tile.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 1,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff5f5f5),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SearchBar(),
            ),
            MyTabBar(tabController: _tabController),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  MeetingList(),
                  UsersList(),
                  UsersList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UsersList extends StatelessWidget {
  const UsersList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<UsersListCubit, UsersListState>(
    //   builder: (context, state) {
    //     if (state is UsersLoading) {
    //       return const Center(
    //         child: CircularProgressIndicator(),
    //       );
    //     }
    //     if (state is UsersSuccsess) {
    return ListView.builder(
      itemBuilder: (context, index) => UserTile(
        user: users[index],
      ),
      itemCount: users.length,
    );
    //     }
    //     return const SizedBox.shrink();
    //   },
    // );
  }
}

class MeetingList extends StatelessWidget {
  const MeetingList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 8),
      separatorBuilder: (context, _) => const SizedBox(
        height: 16,
      ),
      itemCount: 20,
      itemBuilder: (context, _) => const MeetingTile(),
    );
  }
}

var users = List.generate(
  10,
  (index) => UserEntity(
    id: index,
    fullName: 'User №$index',
    positionName: 'Position №$index',
    photoPath: '',
  ),
);
