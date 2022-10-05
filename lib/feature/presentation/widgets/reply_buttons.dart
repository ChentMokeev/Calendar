import 'package:flutter/material.dart';

class ReplyButton extends StatelessWidget {
  const ReplyButton({
    Key? key,
    required this.title,
    required this.color,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: Colors.white,
              padding: EdgeInsets.zero,
            ),
            onPressed: onTap,
            child: Icon(icon, color: color),
          ),
        ),
        const SizedBox(height: 8),
        Text(title, style: TextStyle(color: color)),
      ],
    );
  }
}
