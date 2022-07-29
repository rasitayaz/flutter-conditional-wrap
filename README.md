# Flutter Conditional Wrap

[![Pub](https://img.shields.io/pub/v/conditional_wrap.svg?style=popout)](https://pub.dartlang.org/packages/conditional_wrap)
[![](https://img.shields.io/badge/github-rasitayaz-red)](https://github.com/rasitayaz)
[![](https://img.shields.io/badge/buy&nbsp;me&nbsp;a&nbsp;coffee-donate-blue)](https://www.buymeacoffee.com/RasitAyaz)

A widget that allows you to conditionally wrap a child subtree with a parent widget

## Usage

Simply wrap the widget subtree with a `ConditionalWrap` widget and pass the required properties.

```dart
ConditionalWrap(
  condition: shouldIncludeParent,
  positiveBuilder: (context, child) => ParentWidget(child: child),
  child: ChildSubtree(),
),
```

You can also provide an alternative builder to use when the `condition` is false.

```dart
ConditionalWrap(
  condition: shouldUsePositiveBuilder,
  positiveBuilder: (context, child) => ParentWidget(child: child),
  negativeBuilder: (context, child) => AlternativeParent(child: child),
  child: ChildSubtree(),
),
```
