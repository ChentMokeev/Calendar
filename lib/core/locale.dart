import 'package:flutter/material.dart';
import 'package:test_calendar/l10n/generated/l10n.dart';

extension Test on BuildContext {
  get locale =>  L10n.of(this);
  get height => MediaQuery.of(this).size.height;
}