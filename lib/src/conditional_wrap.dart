import 'package:conditional_wrap/src/builders.dart';
import 'package:flutter/widgets.dart';

class ConditionalWrap extends StatelessWidget {
  /// Creates a widget that conditionally wraps its [child].
  const ConditionalWrap({
    Key? key,
    required this.condition,
    required this.builder,
    this.fallback,
    required this.child,
  }) : super(key: key);

  /// Decides on which [ParentBuilder] to use.
  final bool condition;

  /// Parent builder to use when [condition] is true.
  final ParentBuilder builder;

  /// Parent builder to use when [condition] is false.
  ///
  /// If not specified, [child] is returned.
  final ParentBuilder? fallback;

  /// Widget to be conditionally wrapped.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (condition) {
      return builder(child);
    } else if (fallback != null) {
      return fallback!(child);
    } else {
      return child;
    }
  }
}
