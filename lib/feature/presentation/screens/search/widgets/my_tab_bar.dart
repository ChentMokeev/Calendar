part of '../search_page.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({
    Key? key,
    required TabController tabController,
  }) : _tabController = tabController, super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1, color: Colors.grey.shade400),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
            width: MediaQuery.of(context).size.width * .87,
              child: TabBar(
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
                tabs: const [
                  Tab(text: 'Название', height: 32),
                  Tab(text: 'Сотрудник', height: 32),
                  Tab(text: 'Должность', height: 32),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
