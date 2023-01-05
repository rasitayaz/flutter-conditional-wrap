# Flutter Conditional Wrap 🌯

[![Pub](https://img.shields.io/pub/v/conditional_wrap.svg?style=popout)](https://pub.dartlang.org/packages/conditional_wrap)
[![](https://img.shields.io/badge/github-rasitayaz-red)](https://github.com/rasitayaz)
[![](https://img.shields.io/badge/buy&nbsp;me&nbsp;a&nbsp;coffee-donate-blue)](https://www.buymeacoffee.com/RasitAyaz)

A widget that allows you to conditionally wrap a child subtree with a parent widget

![](https://raw.githubusercontent.com/rasitayaz/flutter-conditional-wrap/master/sample.jpg)

## Usage

### Conditional Wrapping

```dart
WidgetWrapper(
  wrapper: (child) => _condition
      ? ParentWidget(child: child)
      : child,
  child: ChildSubtree(),
),
```

### Null Safe Wrapping


```dart
WidgetWrapper(
  wrapper: (child) {
    final color = _color;
    return color != null
        ? ColoredBox(
            color: color,
            child: child,
          )
        : child;
  },
  child: Text('hello, friend.'),
),
```
