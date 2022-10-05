part of '../meeting_add.dart';

class TimeSelector extends StatefulWidget {
  const TimeSelector({
    Key? key,
  }) : super(key: key);

  @override
  State<TimeSelector> createState() => _TimeSelectorState();
}

class _TimeSelectorState extends State<TimeSelector> {
  bool _toggle = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: const {0: FractionColumnWidth(.14)},
          children: [
            const TableRow(
              children: [
                Icon(
                  Icons.av_timer,
                  color: Colors.blue,
                ),
                Text('01.01.2022, среда'),
              ],
            ),
            TableRow(
              children: [
                const SizedBox(),
                Row(
                  children: [
                    TimeButton(onPress: () {
                      _toggle = !_toggle;
                      setState(() {});
                    }),
                    const Text('   -   '),
                    TimeButton(onPress: () {
                      _toggle = !_toggle;
                      setState(() {});
                    }),
                  ],
                ),
              ],
            ),
          ],
        ),
        MyTimePicker(toggle: _toggle),
      ],
    );
  }
}

class TimeButton extends StatelessWidget {
  const TimeButton({
    Key? key,
    required this.onPress,
  }) : super(key: key);

  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: const BorderSide(color: Colors.grey),
        ),
      ),
      child: const Text(
        '09:00',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}

class MyTimePicker extends StatelessWidget {
  const MyTimePicker({
    Key? key,
    required this.toggle,
  }) : super(key: key);

  final bool toggle;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: toggle ? screenSize.height * .1875 : 0.0001,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.time,
        onDateTimeChanged: (_) {},
        use24hFormat: true,
      ),
    );
  }
}
