import 'package:flutter/material.dart';

class DefaultAppButton extends StatelessWidget {
  const DefaultAppButton(
      {super.key,
      required this.onTap,
      required this.content,
      this.width = double.infinity});

  final VoidCallback onTap;
  final double width;

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 45,
      child: ElevatedButton(
        onPressed: onTap,
        child: content,
      ),
    );
  }
}
