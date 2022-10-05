part of '../calendar_screen.dart';

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
            Text(
              time == DateTime.now()
                  ? L10n.of(context).today
                  : getMonthsRu(time.month),
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
      availableCalendarFormats: kAvailableCalendarFormats,
      // Calendar Style
      calendarStyle: CalendarWidgetStyles.calendarStyle,

      // Header Style
      headerStyle: CalendarWidgetStyles.calendarHeaderStyle,
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
