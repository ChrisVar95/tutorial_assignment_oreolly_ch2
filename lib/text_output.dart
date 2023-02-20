import 'package:flutter/cupertino.dart';

class TextOutput extends StatelessWidget {
  final String maiText;
  const TextOutput(this.maiText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(maiText);
  }
}
