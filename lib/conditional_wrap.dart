library conditional_wrap;

import 'package:flutter/widgets.dart';

class WidgetWrapper extends StatelessWidget {
  /// Creates a widget that conditionally wraps its [child].
  const WidgetWrapper({
    Key? key,
    required this.wrapper,
    required this.child,
  }) : super(key: key);

  /// Wrapper to be applied to the [child].
  final Widget Function(Widget child) wrapper;

  /// Widget to be conditionally wrapped.
  final Widget child;

  @override
  Widget build(BuildContext context) => wrapper(child);
}
