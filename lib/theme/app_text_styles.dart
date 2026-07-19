import 'package:flutter/material.dart';
import 'package:portfolio_app/theme/app_colors.dart';

abstract final class AppTextStyles {
  static const label = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.2,
    color: AppColors.blue,
  );

  static const sectionLabel = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.8,
    color: AppColors.textFaint,
  );

  static const headline = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: AppColors.text,
    letterSpacing: -0.4,
  );

  static const title = TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w700,
    color: AppColors.text,
    letterSpacing: -0.4,
  );

  static const subheading = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.text,
    letterSpacing: -0.3,
  );

  static const body = TextStyle(
    fontSize: 13.5,
    color: AppColors.textSub,
    height: 1.75,
  );

  static const bodySmall = TextStyle(
    fontSize: 13,
    color: AppColors.textSub,
    height: 1.5,
  );

  static const meta = TextStyle(
    fontSize: 12,
    color: AppColors.muted,
  );

  static const metaSemiBold = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.muted,
  );

  static const platform = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: AppColors.textFaint,
  );
}
