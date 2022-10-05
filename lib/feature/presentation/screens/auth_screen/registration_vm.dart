import 'package:flutter/material.dart';

class RegistrationProvider with ChangeNotifier {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController departmentController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
}
