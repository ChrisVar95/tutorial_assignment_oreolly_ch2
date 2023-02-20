import 'package:flutter/material.dart';
import 'text_control.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _textListIndex = 0;
  final _textList = ['First', 'Second', 'Third', 'Fourth', 'Fifth'];

  void incrementIndex() {
    setState(() {
      _textListIndex++;
    });
  }

  void resetIndex() {
    setState(() {
      _textListIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Assignment App'),
        ),
        body: _textListIndex < _textList.length - 1
            ? TextControl(_textList, _textListIndex, incrementIndex)
            : TextControl(_textList, _textListIndex, resetIndex),
      ),
    );
  }
}
