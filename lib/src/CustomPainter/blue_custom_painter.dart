import 'package:flutter/material.dart';

class BlueCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0XFF006CBB)..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0,0);

    path.lineTo(0.0, size.height);

    var controlPoint1 = Offset(size.width - 320, size.height + 40.0);
    var controlPoint2 = Offset(size.width - 260, size.height - 15.0);
    var endPoint = Offset(size.width - 260.0, size.height - 15.0);
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
          controlPoint2.dy, endPoint.dx, endPoint.dy);

    controlPoint1 = Offset(size.width - 190.0, size.height - 70.0);
    controlPoint2 = Offset(size.width - 100, size.height - 10.0);
    endPoint = Offset(size.width, size.height - 100.0);
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
          controlPoint2.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, 0.0);
    
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}