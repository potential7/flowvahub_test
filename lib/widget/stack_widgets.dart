import 'package:flutter/material.dart';

class EllipsePlatform extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const EllipsePlatform({
    super.key,
    this.width = 200,
    this.height = 60,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: _EllipsePainter(color),
    );
  }
}

class _EllipsePainter extends CustomPainter {
  final Color color;

  _EllipsePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6);

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawOval(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}






class TrapezoidPlatform extends StatelessWidget {
  final double topWidth;
  final double bottomWidth;
  final double height;
  final Color color;

  const TrapezoidPlatform({
    super.key,
    this.topWidth = 50,
    this.bottomWidth = 90,
    this.height = 20,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(bottomWidth, height),
      painter: _TrapezoidPainter(
        topWidth: topWidth,
        bottomWidth: bottomWidth,
        height: height,
        color: color,
      ),
    );
  }
}

class _TrapezoidPainter extends CustomPainter {
  final double topWidth;
  final double bottomWidth;
  final double height;
  final Color color;

  _TrapezoidPainter({
    required this.topWidth,
    required this.bottomWidth,
    required this.height,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color.withOpacity(0.2)
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6);

    final path = Path();

    final topLeft = (bottomWidth - topWidth) / 2;
    final topRight = topLeft + topWidth;

    path.moveTo(topLeft, 0);
    path.lineTo(topRight, 0);
    path.lineTo(bottomWidth, height);
    path.lineTo(0, height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_) => false;
}

class Box3DPlatform extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Color sideColor;

  const Box3DPlatform({
    super.key,
    required this.width,
    required this.height,
    this.color = Colors.blue,
    this.sideColor = const Color(0xFF1565C0),
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: _Box3DPainter(color, sideColor),
    );
  }
}

class _Box3DPainter extends CustomPainter {
  final Color topColor;
  final Color sideColor;

  _Box3DPainter(this.topColor, this.sideColor);

  @override
  void paint(Canvas canvas, Size size) {
    final topPaint = Paint()..color = topColor;
    final sidePaint = Paint()..color = sideColor;

    final double topHeight = size.height * 0.18;
    final double bottomHeight = size.height - topHeight;

    Path top = Path()
      ..moveTo(size.width * 0.15, 0)
      ..lineTo(size.width * 0.85, 0)
      ..lineTo(size.width, topHeight)
      ..lineTo(0, topHeight)
      ..close();


    Rect frontRect = Rect.fromLTWH(
      0,
      topHeight,
      size.width,
      bottomHeight,
    );

    canvas.drawPath(top, topPaint);
    canvas.drawRect(frontRect, sidePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}


