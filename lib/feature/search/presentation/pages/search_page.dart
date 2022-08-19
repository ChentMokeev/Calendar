import 'package:flutter/material.dart';

part '../widgets/my_tab_bar.dart';
part '../widgets/search_bar.dart';
part '../widgets/user_tile.dart';
part '../widgets/meeting_tile.dart';

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
            const SearchBar(),
            MyTabBar(tabController: _tabController),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    separatorBuilder: (context, _) => const SizedBox(height: 16),
                    itemCount: 20,
                    itemBuilder: (context, _) => const MeetingTile(),
                  ),
                  ListView.builder(itemBuilder: (context, _) => const UserTile()),
                  ListView.builder(itemBuilder: (context, _) => const UserTile()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

