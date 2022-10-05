import 'package:flutter/material.dart';

class NavigationVM extends ChangeNotifier {
  bool shouldHideBottomBar = false;

  void hideBottomBar(bool status) {
    shouldHideBottomBar = status;
    notifyListeners();
  }
}
