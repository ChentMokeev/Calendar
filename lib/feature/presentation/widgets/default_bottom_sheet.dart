import 'package:flutter/material.dart';
import 'package:test_calendar/core/extensions/context_extension.dart';

class DefaultBottomSheet extends StatelessWidget {
  const DefaultBottomSheet({
    Key? key,
    required this.child,
    required this.persentOfHeight,
  }) : super(key: key);

  final Widget child;
  final double persentOfHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * (persentOfHeight / 100),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: Navigator(
          onGenerateRoute: (_) =>
              MaterialPageRoute(builder: (context2) => child),
        ),
      ),
    );
  }
}
