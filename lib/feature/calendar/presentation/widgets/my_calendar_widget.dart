part of '../pages/main_screen.dart';

class MyCalendarWidget extends StatefulWidget {
  const MyCalendarWidget({Key? key}) : super(key: key);

  @override
  State<MyCalendarWidget> createState() => _MyCalendarWidgetState();
}

class _MyCalendarWidgetState extends State<MyCalendarWidget> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: kFirstDay,
      lastDay: kLastDay,
      focusedDay: _focusedDay,
      calendarFormat: _calendarFormat,
      startingDayOfWeek: StartingDayOfWeek.monday,

      calendarBuilders: CalendarBuilders(
        headerTitleBuilder: (context, time) => Column(
          children: [
            const Text(
              'Сегодня',
              style: CalendarTextStyles.fSize16Weight600White,
            ),
            Text(
              '${time.year}-${time.month}-${time.day}',
              style: CalendarTextStyles.fSize15Weight400
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
        dowBuilder: (_, time) => Text(
          getWeekdayRu(time.weekday),
          textAlign: TextAlign.center,
          style: const TextStyle(color: Color(0x88ffffff)),
        ),
      ),
      availableCalendarFormats: const {
        CalendarFormat.month: 'Month',
        CalendarFormat.week: 'Week'
      },
      // Calendar Style
      calendarStyle: const CalendarStyle(
        defaultTextStyle: TextStyle(color: Colors.white, fontSize: 16),
        weekendTextStyle: TextStyle(color: Colors.white, fontSize: 16),
        todayDecoration: BoxDecoration(
          color: Color(0xff1E4BA4),
          shape: BoxShape.circle,
        ),
      ),

      // Header Style
      headerStyle: const HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
        titleTextStyle: TextStyle(
          color: Colors.white,
        ),
        decoration: BoxDecoration(color: Color(0xff4B84F4)),
        leftChevronIcon: Icon(Icons.chevron_left, color: Colors.white),
        rightChevronIcon: Icon(Icons.chevron_right, color: Colors.white),
      ),

      // Functions
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        if (!isSameDay(_selectedDay, selectedDay)) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        }
      },
      onFormatChanged: (format) {
        if (_calendarFormat != format) {
          setState(() {
            _calendarFormat = format;
          });
        }
      },
      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },
    );
  }
}