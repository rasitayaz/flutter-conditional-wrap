import 'package:conditional_wrap/src/builders.dart';
import 'package:flutter/widgets.dart';

class NullSafeWrap<T> extends StatelessWidget {
  /// Creates a widget that conditionally wraps its [child].
  const NullSafeWrap({
    Key? key,
    required this.value,
    required this.builder,
    this.fallback,
    required this.child,
  }) : super(key: key);

  /// Decides on which [NullSafeBuilder] to use.
  final T? value;

  /// Parent builder to use when [value] is not null.
  final NullSafeBuilder<T> builder;

  /// Parent builder to use when [value] is null.
  ///
  /// If not specified, the [child] is returned.
  final ParentBuilder? fallback;

  /// The widget to be conditionally wrapped.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    T? value = this.value;
    if (value != null) {
      return builder(value, child);
    } else if (fallback != null) {
      return fallback!(child);
    } else {
      return child;
    }
  }
}
