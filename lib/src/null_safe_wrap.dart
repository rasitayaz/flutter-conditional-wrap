import 'package:conditional_wrap/src/builders.dart';
import 'package:flutter/widgets.dart';

class NullSafeWrap<T> extends StatelessWidget {
  /// Creates a widget that wraps its [child] if [value] is not null.
  const NullSafeWrap({
    Key? key,
    required this.value,
    required this.builder,
    this.fallback,
    required this.child,
  }) : super(key: key);

  /// Value to check for null-safety, passed to [builder].
  final T? value;

  /// Parent builder to use when [value] is not null.
  final NullSafeBuilder<T> builder;

  /// Parent builder to use when [value] is null.
  ///
  /// If not specified, [child] is returned.
  final ParentBuilder? fallback;

  /// Widget to be conditionally wrapped.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (value != null) {
      return builder(value as T, child);
    } else if (fallback != null) {
      return fallback!(child);
    } else {
      return child;
    }
  }
}
