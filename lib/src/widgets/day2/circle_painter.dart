import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  final double radio;

  CirclePainter({this.radio = 25.0});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width * 0.5, size.height * 0.5);

    canvas.drawCircle(center, radio, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
