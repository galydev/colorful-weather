import 'package:flutter/material.dart';

class SnowCustomPainter extends CustomPainter {
  
  double sizeCircle;
  double x;
  double y;

  SnowCustomPainter({required this.x, required this.y, required this.sizeCircle});
  
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    
    canvas.drawCircle(Offset(x, y), sizeCircle, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
