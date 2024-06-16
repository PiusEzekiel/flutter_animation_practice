import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Practice',
      home: AnimationExample(),
    );
  }
}

class AnimationExample extends StatefulWidget {
  @override
  _AnimationExampleState createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  final Duration _duration = const Duration(seconds: 4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animation Practice',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: AnimatedContainer(
            duration: _duration,
            width: _isExpanded ? 300 : 100,
            height: _isExpanded ? 300 : 100,
            decoration: BoxDecoration(
              color: (_isExpanded
                  ? Colors.red
                  : const Color.fromARGB(255, 100, 2, 2)),
              borderRadius: BorderRadius.circular(_isExpanded ? 200 : 0),
            ),
          ),
        ),
      ),
    );
  }
}
