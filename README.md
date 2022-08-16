# Flutter Conditional Wrap 🌯

[![Pub](https://img.shields.io/pub/v/conditional_wrap.svg?style=popout)](https://pub.dartlang.org/packages/conditional_wrap)
[![](https://img.shields.io/badge/github-rasitayaz-red)](https://github.com/rasitayaz)
[![](https://img.shields.io/badge/buy&nbsp;me&nbsp;a&nbsp;coffee-donate-blue)](https://www.buymeacoffee.com/RasitAyaz)

A widget that allows you to conditionally wrap a child subtree with a parent widget

![](https://raw.githubusercontent.com/rasitayaz/flutter-conditional-wrap/master/sample.jpg)

## Usage

### Conditional Wrap

`ConditionalWrap` widget takes a boolean `condition` parameter and wraps the child subtree with `builder` if the condition is true.

```dart
ConditionalWrap(
  condition: _shouldIncludeParent,
  builder: (child) => ParentWidget(child: child),
  child: ChildSubtree(),
),
```

You can also provide a `fallback` builder to use when the `condition` is false.

```dart
ConditionalWrap(
  condition: _shouldUseBuilder,
  builder: (child) => ParentWidget(child: child),
  fallback: (child) => FallbackParent(child: child),
  child: ChildSubtree(),
),
```

### Null Safe Wrap

`NullSafeWrap<T>` widget takes a generic `T? value` parameter and wraps the child subtree with `builder` if the value is not null. This builder provides `T value` argument that can be used safely.

Similarly to conditional wrap, you can provide a `fallback` to use when the value is null.

```dart
NullSafeWrap<Color>(
  value: _color,
  builder: (color, child) => ColoredBox(
    color: color,
    child: child,
  ),
  child: Text('hello, friend.'),
),
```
