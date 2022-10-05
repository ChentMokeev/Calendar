import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_calendar/l10n/generated/l10n.dart';

extension ContextExtension on BuildContext {
  L10n get lang => L10n.of(this);
  TabsRouter get tabs => AutoTabsRouter.of(this);
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get defaultPadding => MediaQuery.of(this).size.width * 0.044;
}
