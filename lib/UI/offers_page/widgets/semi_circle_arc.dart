import 'dart:math' as math;

import 'package:flutter/material.dart';

class SemiArc extends StatelessWidget {
  final double diameter;

  const SemiArc({super.key, this.diameter = 15});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: CustomPaint(
        painter: MyPainter(),
        size: Size(diameter, diameter),
      ),
    );
  }
}


// This is the Painter class
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.blue[100]!;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(0, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      3*math.pi/2,
      math.pi,
      false,
      paint,
    );
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
   return true;
  }
}