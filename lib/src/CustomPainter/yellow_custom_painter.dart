import 'package:flutter/material.dart';

class YellowCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0XFFFFC800)..style = PaintingStyle.fill;
    Path path = Path()..moveTo(size.width*0.25,0);
    
    
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    var controlPoint1 = Offset(size.width - 50, size.height - 160.0);
    var controlPoint2 = Offset(size.width - 100, size.height - 25.0);
    var endPoint = Offset(size.width - 180.0, size.height - 130.0);
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
          controlPoint2.dy, endPoint.dx, endPoint.dy);
 
    controlPoint1 = Offset(size.width - 220, size.height - 160.0);
    controlPoint2 = Offset(size.width - 250, size.height - 130.0);
    endPoint = Offset(size.width*0.25, 0.0);
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
          controlPoint2.dy, endPoint.dx, endPoint.dy);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
