import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double borderRadius;
  final VoidCallback onPressed;
  final double height;

  CustomElevatedButton({
    this.color,
    this.borderRadius: 2.0,
    this.onPressed,
    this.child,
    this.height: 50.0,
  })  : assert(borderRadius != null),
        assert(height != null);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
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
      ),
    );
  }
}
