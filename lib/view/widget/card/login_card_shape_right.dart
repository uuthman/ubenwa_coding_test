import 'package:flutter/material.dart';
class LoginCardShapeRight extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    var path = Path();

    paint.color = const Color(0xffffebdb);
    path = Path();
    path.lineTo(size.width * 0.1, 0);
    path.cubicTo(
        size.width * 0.15, 0, size.width * 0.85, 0, size.width * 0.9, 0);
    path.cubicTo(size.width * 0.95, 0, size.width * 0.97, size.height * 0.02,
        size.width * 0.97, size.height * 0.02);
    path.cubicTo(size.width * 0.97, size.height * 0.02, size.width,
        size.height * 0.04, size.width, size.height * 0.07);
    path.cubicTo(size.width, size.height * 0.09, size.width, size.height * 0.91,
        size.width, size.height * 0.93);
    path.cubicTo(size.width, size.height * 0.95, size.width * 0.98,
        size.height * 0.97, size.width * 0.97, size.height * 0.98);
    path.cubicTo(size.width * 0.95, size.height, size.width * 0.93, size.height,
        size.width * 0.9, size.height);
    path.cubicTo(size.width * 0.9, size.height, size.width * 0.51, size.height,
        size.width * 0.51, size.height);
    path.cubicTo(size.width * 0.51, size.height, size.width * 0.47, size.height,
        size.width * 0.45, size.height * 0.94);
    path.cubicTo(size.width * 0.42, size.height * 0.89, size.width * 0.4,
        size.height * 0.85, size.width * 0.4, size.height * 0.85);
    path.cubicTo(size.width * 0.4, size.height * 0.85, size.width * 0.37,
        size.height * 0.82, size.width * 0.32, size.height * 0.82);
    path.cubicTo(size.width * 0.27, size.height * 0.82, size.width * 0.11,
        size.height * 0.82, size.width * 0.09, size.height * 0.82);
    path.cubicTo(size.width * 0.06, size.height * 0.82, size.width * 0.03,
        size.height * 0.8, size.width * 0.03, size.height * 0.8);
    path.cubicTo(size.width * 0.03, size.height * 0.8, size.width * 0.01,
        size.height * 0.78, 0, size.height * 0.74);
    path.cubicTo(
        0, size.height * 0.7, 0, size.height * 0.09, 0, size.height * 0.07);
    path.cubicTo(0, size.height * 0.04, size.width * 0.03, size.height * 0.02,
        size.width * 0.03, size.height * 0.02);
    path.cubicTo(size.width * 0.03, size.height * 0.02, size.width * 0.06, 0,
        size.width * 0.1, 0);
    path.cubicTo(size.width * 0.1, 0, size.width * 0.1, 0, size.width * 0.1, 0);
    canvas.drawShadow(path, Colors.black, 2, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}