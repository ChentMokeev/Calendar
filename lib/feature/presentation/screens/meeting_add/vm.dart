import 'package:flutter/material.dart';

class NewMeetingVM with ChangeNotifier {
  NewMeetingVM();

  final nameController = TextEditingController();
  var startTime = ValueNotifier(DateTime.now().hour);
  var endTime = ValueNotifier(DateTime.now().hour + 1);
  dynamic date = '';
  bool? repeat;
  int? room;
  bool? isVisible;

  List participans = [];
  var isFullFilled = ValueNotifier<bool>(false);

  addUser() {
    notifyListeners();
  }

  void isButtonAvalable() {
    if (nameController.text.trim().isNotEmpty) {
      if (repeat == null && room == null && isVisible == null) {}
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    isFullFilled.dispose();
    startTime.dispose();
    endTime.dispose();
    super.dispose();
  }
}
