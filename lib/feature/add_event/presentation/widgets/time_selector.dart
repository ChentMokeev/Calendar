part of '../pages/add_event_bottom_sheet.dart';

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
        const ListTile(
          leading: Icon(Icons.av_timer),
          title: Text('01.01.2022, среда'),
        ),
        Row(
          children: [
            TimeButton(onPress: () {
              _toggle = !_toggle;
              setState(() {});
            }),
            TimeButton(onPress: () {
              _toggle = !_toggle;
              setState(() {});
            }),
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
    return TextButton(onPressed: onPress, child: const Text('09:00'));
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
      color: Colors.green.shade100,
      height: toggle ? screenSize.height * .1875 : 0,
    );
  }
}
