import 'package:flutter/material.dart';

class YellowCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // debugPrint(size.width.toString());
    // debugPrint(size.height.toString());

    Paint paint = Paint()..color = Color(0XFFFFC800)..style = PaintingStyle.fill;
    Path path = Path()..moveTo(size.width*0.25,0);
    
    
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    var controlPoint1 = Offset(size.width - (size.width * 0.09), size.height - (size.height * 0.7));
    var controlPoint2 = Offset(size.width - (size.width * 0.24), size.height - (size.height * 0.125));
    var endPoint = Offset(size.width - (size.width * 0.44), size.height - (size.height * 0.65));
    path.cubicTo(
      controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
      controlPoint2.dy, endPoint.dx, endPoint.dy
      );
 
    controlPoint1 = Offset(size.width - (size.width * 0.54), size.height - (size.height * 0.9));
    controlPoint2 = Offset(size.width - (size.width * 0.61), size.height - (size.height * 0.65));
    endPoint = Offset(size.width * 0.25, 0.0);
    path.cubicTo(
      controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
      controlPoint2.dy, endPoint.dx, endPoint.dy
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
