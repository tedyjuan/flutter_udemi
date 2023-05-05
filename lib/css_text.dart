import 'package:flutter/material.dart';

class CssText extends StatelessWidget {
  const CssText(this.msg, {super.key});
  final String msg;
  @override
  Widget build(BuildContext context) {
    return Text(
      msg,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
