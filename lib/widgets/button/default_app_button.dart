import 'package:flutter/material.dart';

class DefaultAppButton extends StatelessWidget {
  const DefaultAppButton({super.key, required this.onTap, required this.content});

  final VoidCallback onTap;

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        child: content,
      ),
    );
  }
}
