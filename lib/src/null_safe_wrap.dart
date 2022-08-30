import 'package:conditional_wrap/src/wrappers.dart';
import 'package:flutter/widgets.dart';

class NullSafeWrap<T> extends StatelessWidget {
  /// Creates a widget that wraps its [child] if [value] is not null.
  const NullSafeWrap({
    Key? key,
    required this.value,
    required this.wrapper,
    this.fallback,
    required this.child,
  }) : super(key: key);

  /// Value to check for null-safety, passed to [wrapper].
  final T? value;

  /// Wrapper to use when [value] is not null.
  final NullSafeWrapper<T> wrapper;

  /// Wrapper to use when [value] is null.
  ///
  /// If not specified, [child] is returned.
  final Wrapper? fallback;

  /// Widget to be conditionally wrapped.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (value != null) {
      return wrapper(value as T, child);
    } else if (fallback != null) {
      return fallback!(child);
    } else {
      return child;
    }
  }
}
