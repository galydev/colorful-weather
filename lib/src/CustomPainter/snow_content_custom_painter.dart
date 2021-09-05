import 'package:flutter/material.dart';

class SnowContentCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint = Paint()..color = Color(0XFFED3657)..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 0);

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height*0.8);
    path.lineTo(size.width*0.3, size.height);
    path.lineTo(0, size.height);
  
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}