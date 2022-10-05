part of '../meeting_add.dart';

class MembersSelector extends StatelessWidget {
  const MembersSelector({
    Key? key,
    required this.onPress,
  }) : super(key: key);

  final Function() onPress;
  static const bool _toggle = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 0,
          leading: const Icon(Icons.person_outline, color: Colors.blue),
          title: Text(L10n.of(context).members),
          trailing: SizedBox(
            height: 32,
            width: 32,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(0)),
              onPressed: onPress,
              child: const Icon(Icons.add),
            ),
          ),
        ),
        _toggle
            ? const Padding(
                padding: EdgeInsets.only(left: 48),
                child: MembersWheel(),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}

class MembersWheel extends StatelessWidget {
  const MembersWheel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CircleAvatar(),
        separatorBuilder: (context, _) => const SizedBox(width: 8),
        itemCount: 8,
      ),
    );
  }
}
