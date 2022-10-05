import 'package:flutter/material.dart';
import 'package:test_calendar/feature/presentation/widgets/default_bottom_sheet.dart';

abstract class AppModals {
  static Future showModal({
    required BuildContext context,
    required Widget child,
    required double persentOfHeight,
    bool useBarrierColor = false,
    bool isScrollControlled = true,
    bool enableDismissDrag = false,
  }) =>
      showModalBottomSheet(
        enableDrag: enableDismissDrag,
        context: context,
        isScrollControlled: isScrollControlled,
        barrierColor: useBarrierColor ? Colors.transparent : null,
        builder: (BuildContext context) => DefaultBottomSheet(
          persentOfHeight: persentOfHeight,
          child: child,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        backgroundColor: Colors.white,
      );
}
