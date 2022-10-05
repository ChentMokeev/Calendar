import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
}
