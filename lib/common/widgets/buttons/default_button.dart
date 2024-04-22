import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
    this.text, {
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
