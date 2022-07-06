part of '../pages/main_screen.dart';

class MyFloatingActBtn extends StatelessWidget {
  const MyFloatingActBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xff1E4BA4),
      child: const Icon(Icons.add, size: 50),
      onPressed: () {},
    );
  }
}
