import 'package:flutter/material.dart';
import 'package:test_calendar/feature/add_event/presentation/widgets/save_button.dart';
import 'package:test_calendar/feature/search/presentation/widgets/search_bar.dart';
import 'package:test_calendar/l10n/generated/l10n.dart';

class MembersBottomSheet extends StatelessWidget {
  const MembersBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(L10n.of(context).members)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SearchBar(),
            const SizedBox(height: 16),
            Expanded(
              // height: MediaQuery.of(context).size.height / 2,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => const ListTile(
                  leading: CircleAvatar(),
                  title: Text('John Doe'),
                  subtitle: Text('Java Enjoyer'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Выберите участников',
                style: TextStyle(
                  height: 2.857,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SaveButton(),
          ],
        ),
      ),
    );
  }
}