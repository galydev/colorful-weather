import 'package:flutter/material.dart';

class BlueCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint = Paint()..color = Color(0XFF006CBB)..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0,0);

    path.lineTo(0.0, size.height);

    var controlPoint1 = Offset(size.width - (size.width * 0.76), size.height + (size.height * 0.2));
    var controlPoint2 = Offset(size.width - (size.width * 0.63), size.height - (size.height * 0.085));
    var endPoint = Offset(size.width - (size.width * 0.63), size.height - (size.height * 0.085));
    path.cubicTo(
      controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
      controlPoint2.dy, endPoint.dx, endPoint.dy
      );

    controlPoint1 = Offset(size.width - (size.width * 0.46), size.height - (size.height * 0.45));
    controlPoint2 = Offset(size.width - (size.width * 0.24), size.height - (size.height * 0.01));
    endPoint = Offset(size.width * 0.9, size.height - (size.width * 0.15));
    path.cubicTo(
      controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
      controlPoint2.dy, endPoint.dx, endPoint.dy
      );

    path.lineTo(size.width, 0.0);
    
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}