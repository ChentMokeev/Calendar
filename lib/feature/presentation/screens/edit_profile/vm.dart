import 'package:flutter/material.dart';

class UpdatePersonalInfo with ChangeNotifier {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? msisdn;
  var isFullFilled = ValueNotifier(false);
}
