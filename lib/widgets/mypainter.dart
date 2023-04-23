import 'package:flutter/material.dart';
import 'dart:math';

class HourlyBarChartPainter extends CustomPainter {
  final List<double> values;
  final Animation<double> animation;

  HourlyBarChartPainter({required this.values, required this.animation, required MaterialColor barColor, required int maxValue, required int barWidth})
      : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final barWidth = size.width / 25;
    final barCount = values.length;
    final barPadding = barWidth / 4;
    final chartHeight = size.height;
    final maxValue = values.reduce(max);
    final barPaint = Paint();
    final gradientColors = [Colors.green, Colors.yellow, Colors.red];

    // Create color gradient shader
    final gradientShader = LinearGradient(
        colors: gradientColors,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter)
        .createShader(Rect.fromLTWH(0, 0, 0, size.height));

    // Draw bars
    for (int i = 0; i < values.length; i++) {
      final barHeight = values[i] / maxValue * size.height;
      final barRect = Rect.fromLTRB(
          i * barWidth + barPadding,
          size.height - barHeight * animation.value,
          (i + 1) * barWidth - barPadding,
          size.height);
      final barGradient = LinearGradient(
          colors: gradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter)
          .createShader(barRect);

      // Draw bar with color gradient
      canvas.drawRect(barRect,
          barPaint
          ..shader = barGradient
          ..style = PaintingStyle.fill,
      );
    }
  }

  @override
  bool shouldRepaint(HourlyBarChartPainter oldDelegate) {
    return oldDelegate.values != values || oldDelegate.animation != animation;
    //throw UnimplementedError();
  }
}
