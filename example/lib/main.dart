import 'package:conditional_wrap/conditional_wrap.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool _condition = false;
  Color? _color;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 256,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SwitchListTile(
                  value: _condition,
                  title: const Text('condition'),
                  onChanged: (value) => setState(() => _condition = value),
                ),
                const SizedBox(height: 16),
                WidgetWrapper(
                  wrapper: (child) => _condition
                      ? ColoredBox(
                          color: Colors.green,
                          child: child,
                        )
                      : child,
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('conditional wrap'),
                  ),
                ),
                const SizedBox(height: 16),
                WidgetWrapper(
                  wrapper: (child) => _condition
                      ? ColoredBox(
                          color: Colors.green,
                          child: child,
                        )
                      : ColoredBox(
                          color: Colors.red,
                          child: child,
                        ),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('conditional wrap with fallback'),
                  ),
                ),
                const SizedBox(height: 16),
                SwitchListTile(
                  value: _color != null,
                  title: Text('color:  ${_color?.title}'),
                  onChanged: (value) {
                    setState(() => _color = value ? Colors.blue : null);
                  },
                ),
                const SizedBox(height: 16),
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
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('null safe wrap'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

extension ColorExtension on Color {
  String get title => this == Colors.blue ? 'blue' : 'unknown';
}
