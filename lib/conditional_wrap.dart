library conditional_wrap;

import 'package:flutter/widgets.dart';

typedef ParentBuilder = Widget Function(BuildContext context, Widget child);

class ConditionalWrap extends StatelessWidget {
  /// Creates a widget that conditionally wraps its [child].
  const ConditionalWrap({
    Key? key,
    required this.condition,
    required this.positiveBuilder,
    this.negativeBuilder,
    required this.child,
  }) : super(key: key);

  /// Decides on which [ParentBuilder] to use.
  final bool condition;

  /// Parent builder to use when [condition] is true.
  final ParentBuilder positiveBuilder;

  /// Parent builder to use when [condition] is false.
  ///
  /// If not specified, the [child] is returned.
  final ParentBuilder? negativeBuilder;

  /// The widget to be conditionally wrapped.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (condition) {
      return positiveBuilder(context, child);
    } else if (negativeBuilder != null) {
      return negativeBuilder!(context, child);
    } else {
      return child;
    }
  }
}
