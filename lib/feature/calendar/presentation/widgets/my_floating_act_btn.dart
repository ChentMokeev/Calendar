part of '../pages/main_screen.dart';

class MyFloatingActBtn extends StatelessWidget {
  const MyFloatingActBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xff1E4BA4),
      child: const Icon(Icons.add, size: 26.67),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => const AddEventBottomSheet(),
          isScrollControlled: true,
          useRootNavigator: true,
          enableDrag: false,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
        );
      },
    );
  }
}