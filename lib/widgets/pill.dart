import 'package:flutter/material.dart';
import 'package:portfolio_app/theme/app_colors.dart';

class Pill extends StatelessWidget {
  final String label;
  final EdgeInsetsGeometry padding;
  final double fontSize;

  const Pill({
    super.key,
    required this.label,
    this.padding = const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
    this.fontSize = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: AppColors.blueLight,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
          color: AppColors.blue,
        ),
      ),
    );
  }
}
