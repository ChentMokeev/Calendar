part of '../pages/auth_screen/auth_screen.dart';

class DefaultTextField extends StatelessWidget {
  const DefaultTextField({
    Key? key,
    required this.label,
    required this.controller,
    this.hideText = false,
  }) : super(key: key);

  final String label;
  final bool hideText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: CalendarTextStyles.fSize14Weight300Gray,
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 40,
          child: TextField(
            controller: controller,
            obscureText: hideText,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
