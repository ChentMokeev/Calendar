import 'package:flutter/material.dart';
import 'package:test_calendar/feature/search/presentation/widgets/search_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            children: const [
              SearchBar(),
              TabBar(
                tabs: [
                  Tab(text: 'Название'),
                  Tab(text: 'Сотрудник'),
                  Tab(text: 'Должность'),
                ],
              ),
              TabBarView(
                children: [
                  Scaffold(),
                  Scaffold(),
                  Scaffold(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
