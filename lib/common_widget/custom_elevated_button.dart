import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double borderRadius;
  final VoidCallback onPressed;

  CustomElevatedButton(
      {this.color, this.borderRadius, this.onPressed, this.child});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
      ),
      /* ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialState
            ), */
    );
  }
}
