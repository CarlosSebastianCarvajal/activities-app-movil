import 'package:flutter/material.dart';

class BotonFlotante extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const BotonFlotante({
    super.key, 
    required this.icon,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}