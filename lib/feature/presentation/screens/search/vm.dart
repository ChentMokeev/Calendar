import 'package:flutter/material.dart';

class SearchVM with ChangeNotifier {
  var queryController = TextEditingController();
  var isNotEmpty = ValueNotifier(false);

  clearTextField() {
    queryController.text = '';
    notifyListeners();
  }
}
