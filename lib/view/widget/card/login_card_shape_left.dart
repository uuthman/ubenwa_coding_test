import 'package:flutter/material.dart';

class LoginCardShapeLeft extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    var path = Path();

    paint.color = Colors.white;
    path = Path();
    path.lineTo(size.width * 0.9, 0);
    path.cubicTo(
        size.width * 0.85, 0, size.width * 0.15, 0, size.width * 0.1, 0);
    path.cubicTo(size.width * 0.05, 0, size.width * 0.03, size.height * 0.02,
        size.width * 0.03, size.height * 0.02);
    path.cubicTo(size.width * 0.03, size.height * 0.02, 0, size.height * 0.04,
        0, size.height * 0.07);
    path.cubicTo(
        0, size.height * 0.09, 0, size.height * 0.91, 0, size.height * 0.93);
    path.cubicTo(0, size.height * 0.95, size.width * 0.02, size.height * 0.97,
        size.width * 0.03, size.height * 0.98);
    path.cubicTo(size.width * 0.05, size.height, size.width * 0.07, size.height,
        size.width * 0.1, size.height);
    path.cubicTo(size.width * 0.1, size.height, size.width * 0.49, size.height,
        size.width * 0.49, size.height);
    path.cubicTo(size.width * 0.49, size.height, size.width * 0.53, size.height,
        size.width * 0.55, size.height * 0.94);
    path.cubicTo(size.width * 0.58, size.height * 0.89, size.width * 0.6,
        size.height * 0.85, size.width * 0.6, size.height * 0.85);
    path.cubicTo(size.width * 0.6, size.height * 0.85, size.width * 0.63,
        size.height * 0.82, size.width * 0.68, size.height * 0.82);
    path.cubicTo(size.width * 0.73, size.height * 0.82, size.width * 0.89,
        size.height * 0.82, size.width * 0.92, size.height * 0.82);
    path.cubicTo(size.width * 0.94, size.height * 0.82, size.width * 0.97,
        size.height * 0.8, size.width * 0.97, size.height * 0.8);
    path.cubicTo(size.width * 0.97, size.height * 0.8, size.width,
        size.height * 0.78, size.width, size.height * 0.74);
    path.cubicTo(size.width, size.height * 0.7, size.width, size.height * 0.09,
        size.width, size.height * 0.07);
    path.cubicTo(size.width, size.height * 0.04, size.width * 0.97,
        size.height * 0.02, size.width * 0.97, size.height * 0.02);
    path.cubicTo(size.width * 0.97, size.height * 0.02, size.width * 0.94, 0,
        size.width * 0.9, 0);
    path.cubicTo(size.width * 0.9, 0, size.width * 0.9, 0, size.width * 0.9, 0);
    canvas.drawShadow(path, Colors.black, 2, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}