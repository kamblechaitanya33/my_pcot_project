import 'package:flutter/material.dart';

class AppElevatedCard extends StatelessWidget {
  final Color cardColor;
  final Radius cardRadiusTopLeft;
  final Radius cardRadiusBottomLeft;
  final Radius cardRadiusTopRight;
  final Radius cardRadiusBottomRight;
  final Color cardBorder;
  final Widget child;

  const AppElevatedCard({
    this.cardColor =Colors.white,
    this.cardRadiusTopLeft =  const Radius.circular(5),
    this.cardRadiusBottomLeft=const Radius.circular(5),
    this.cardRadiusTopRight=const Radius.circular(5),
    this.cardRadiusBottomRight=const Radius.circular(5),
    this.cardBorder=Colors.transparent,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: cardColor,
          border: Border.all(color: cardBorder),
          borderRadius: BorderRadius.only(
            bottomLeft: cardRadiusBottomLeft,
            bottomRight: cardRadiusBottomRight,
            topLeft: cardRadiusTopLeft,
            topRight: cardRadiusTopRight,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 237, 237, 237),
              spreadRadius: 0.4,
              offset: Offset(1, 2),
            ),
          ],
        ),
        child: child, // FIXED: Added the child implementation here
      ),
    );
  }
}
