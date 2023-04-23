import 'package:flutter/material.dart';

class VerticalProgressBar extends StatelessWidget {
  final double progress;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color progressColor;

  const VerticalProgressBar({
    super.key,
    required this.progress,
    this.width = double.infinity,
    this.height = 8,
    this.backgroundColor = Colors.grey,
    this.progressColor = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(4)),
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: progress,
        child: Container(
          height: height,
          decoration: BoxDecoration(
              color: progressColor, borderRadius: BorderRadius.circular(4)),
        ),
      ),
    );
  }
}
