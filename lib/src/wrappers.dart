import 'package:flutter/widgets.dart';

typedef Wrapper = Widget Function(Widget child);

typedef NullSafeWrapper<T> = Widget Function(
  T value,
  Widget child,
);
