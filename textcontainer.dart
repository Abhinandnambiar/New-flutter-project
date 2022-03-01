import 'package:flutter/material.dart';

class TextContain extends StatelessWidget {
  double size;
  final Color color;
  final Text text;
  TextContain(
      {Key? key, required this.color, required this.text, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      color: color,
      child: text,
    );
  }
}
