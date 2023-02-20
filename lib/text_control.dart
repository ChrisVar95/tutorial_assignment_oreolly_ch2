import 'package:flutter/material.dart';
import './text_output.dart';

class TextControl extends StatelessWidget {
  final List<String> textList;
  final int textListIndex;
  final VoidCallback increment;
  const TextControl(this.textList, this.textListIndex, this.increment,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(textList[textListIndex]),
          ElevatedButton(
            onPressed: increment,
            child: const TextOutput("Press"),
          ),
        ],
      ),
    );
  }
}
