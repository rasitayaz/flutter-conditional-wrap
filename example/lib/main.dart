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
                  title: const Text('Condition'),
                  onChanged: (value) => setState(() => _condition = value),
                ),
                const SizedBox(height: 16),
                ConditionalWrap(
                  condition: _condition,
                  positiveBuilder: (context, child) => ColoredBox(
                    color: Colors.green,
                    child: child,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('Only Positive Parent Builder'),
                  ),
                ),
                const SizedBox(height: 16),
                ConditionalWrap(
                  condition: _condition,
                  positiveBuilder: (context, child) => Container(
                    color: Colors.green,
                    child: child,
                  ),
                  negativeBuilder: (context, child) => ColoredBox(
                    color: Colors.red,
                    child: child,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('With Negative Parent Builder'),
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
