part of '../calendar_screen.dart';

class MyFloatingActBtn extends StatelessWidget {
  const MyFloatingActBtn({
    Key? key,
    required this.modal,
    required this.persentOfHeight,
  }) : super(key: key);

  final Widget modal;
  final double persentOfHeight;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xff1E4BA4),
      child: const Icon(Icons.add, size: 26.67),
      onPressed: () {
        context.read<NavigationVM>().hideBottomBar(true);
        AppModals.showModal(
          context: context,
          child: modal,
          persentOfHeight: persentOfHeight,
        );
      },
    );
  }
}
