import 'package:flutter/material.dart';

class BackgroundCirclePainter extends StatelessWidget {
  const BackgroundCirclePainter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: CustomRectanglePainter(),
      ),
    );
  }
}

class CustomRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 1
      ..color = Colors.pinkAccent
      ..strokeCap = StrokeCap.square
      ..style = PaintingStyle.fill;

    final path = Path();
    //? X , Y ....
    path.moveTo(0, size.height * 0.35);
    path.quadraticBezierTo(
      size.width * 0.7,
      size.height * 0.4,
      size.width,
      size.height * 0.2,
    );

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    // path.lineTo(0, size.height * 0.56);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
