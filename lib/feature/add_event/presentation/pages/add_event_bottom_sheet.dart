import 'package:flutter/material.dart';
import 'package:test_calendar/feature/add_event/presentation/pages/repeat_bottom_sheet.dart';
import '../../../../resouces/calendar_text_styles.dart';

part '../widgets/time_selector.dart';
part '../widgets/member_selector.dart';
part '../widgets/default_selector.dart';

class AddEventBottomSheet extends StatelessWidget {
  const AddEventBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height * 0.9625,
      child: Material(
        child: Navigator(
          onGenerateRoute: (_) => MaterialPageRoute(
            builder: (context2) => Builder(
              builder: (context1) => Stack(
                children: [
                  SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Новое событие',
                            style: CalendarTextStyles.fSize18Weight600,
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 48),
                              hintText: 'Название',
                              border: InputBorder.none),
                        ),
                        const DefaultDevider(),
                        const TimeSelector(),
                        const DefaultDevider(),
                        DefaultSelector(
                            icon: Icons.add,
                            title: 'Повторять',
                            onTap: () {
                              Navigator.of(context1).push(
                                MaterialPageRoute(
                                  builder: (context1) => const RepeatBottomSheet(),
                                ),
                              );
                            }),
                        const DefaultDevider(),
                        const MembersSelector(),
                        const DefaultDevider(),
                        DefaultSelector(
                            icon: Icons.add, title: 'Помещение', onTap: () {}),
                        const DefaultDevider(),
                        DefaultSelector(
                            icon: Icons.add, title: 'Мои метки', onTap: () {}),
                        const DefaultDevider(),
                        DefaultSelector(
                            icon: Icons.add,
                            title: 'Приватность',
                            onTap: () {}),
                        const DefaultDevider(),
                      ],
                    ),
                  ),
                  ExitButton(c: context),
                  SaveButton(screenSize: screenSize),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DefaultDevider extends StatelessWidget {
  const DefaultDevider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(indent: 16, endIndent: 16);
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16,
      left: 16,
      height: 48,
      width: screenSize.width - 32,
      child: const SizedBox(
        child: ElevatedButton(
          child: Text('Сохранить'),
          onPressed: null,
        ),
      ),
    );
  }
}

class ExitButton extends StatelessWidget {
  const ExitButton({
    Key? key,
    required this.c,
  }) : super(key: key);

  final BuildContext c;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16,
      right: 16,
      child: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () => Navigator.pop(c),
      ),
    );
  }
}
