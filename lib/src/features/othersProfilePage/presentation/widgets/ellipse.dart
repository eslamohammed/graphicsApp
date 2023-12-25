import 'package:flutter/material.dart';

class EllipsePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const gradient = LinearGradient(
      colors: [
        Color(0xFF242424),
        Color(0xFF242424),
      ],
      stops: [0.0, 1.0],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      transform: GradientRotation((3.141592653589793)/ 4),
    );
    final paint = Paint()
      ..shader = gradient.createShader(Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2),
        width: size.width,
        height: size.height,
      ))
      ..style = PaintingStyle.fill;
    final center = Offset(size.width / 2, size.height / 2);
    // final radiusX = size.width / 1.5;
    // final radiusY = size.height / 4;
    // final radiusY = 475;
    // final radiusX = 255;
    final radiusX = 475.0;
    final radiusY = 255.0;
    // final radiusX = 237.5;
    // final radiusY = 127.5;
    canvas.drawOval(Rect.fromCenter(center: center, width: radiusX *2, height: radiusY*2), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class EllipseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: EllipsePainter(),
      // child: Container(),
    );
  }
}

