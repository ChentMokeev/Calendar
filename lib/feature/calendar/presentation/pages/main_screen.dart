import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:test_calendar/resouces/calendar_text_styles.dart';

import '../utils.dart';

part '../widgets/my_calendar_widget.dart';
part '../widgets/event_card.dart';
part '../widgets/my_bottom_nav_bar.dart';
part '../widgets/my_floating_act_btn.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4B84F4),
      floatingActionButton: const MyFloatingActBtn(),
      bottomNavigationBar: const MyBottomNavBar(),
      body: Column(
        children: [
          const MyCalendarWidget(),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView.separated(
                padding: const EdgeInsets.only(bottom: 16),
                itemBuilder: (context, index) => Stack(
                  children: [
                    const SizedBox(
                      height: 88,
                    ),
                    Positioned(
                      left: 16,
                      bottom: 36,
                      child: Text('${index + 9}:00'),
                    ),
                    const Positioned(
                      bottom: 0,
                      right: 16,
                      child: EventCard(),
                    )
                  ],
                ),
                separatorBuilder: (context, _) => const Divider(height: 1),
                itemCount: 9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}