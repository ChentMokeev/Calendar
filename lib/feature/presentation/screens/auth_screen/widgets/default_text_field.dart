part of '../auth_screen.dart';

class DefaultTextField extends StatelessWidget {
  const DefaultTextField({
    Key? key,
    required this.label,
    this.hideText = false,
  }) : super(key: key);

  final String label;
  final bool hideText;

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
