import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    this.onPress,
    required this.title,
  }) : super(key: key);

  final Function()? onPress;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        onPressed: onPress,
        child: Text(title),
      ),
    );
  }
}
