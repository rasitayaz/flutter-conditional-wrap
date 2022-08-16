import 'package:flutter/widgets.dart';

typedef ParentBuilder = Widget Function(Widget child);

typedef NullSafeBuilder<T> = Widget Function(
  T value,
  Widget child,
);
