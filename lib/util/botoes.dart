import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Botoes extends StatelessWidget {
  final Icon icon;
  VoidCallback onPressed;

  Botoes({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Icon(icon.icon),
    );
  }
}
