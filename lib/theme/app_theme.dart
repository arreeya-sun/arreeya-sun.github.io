import 'package:flutter/material.dart';
import 'package:portfolio_app/theme/app_colors.dart';

class AppTheme {
  static ThemeData get theme => ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.blue,
            foregroundColor: Colors.white,
            elevation: 0,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            minimumSize: const Size(0, 40),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            iconSize: 14,
            textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
          ).copyWith(
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
            ),
            overlayColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.hovered)) {
                return Colors.white.withValues(alpha: 0.15);
              }
              return null;
            }),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: AppColors.blue,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            minimumSize: const Size(0, 40),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            iconSize: 14,
            textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
            side: const BorderSide(color: AppColors.blue, width: 1.5),
          ).copyWith(
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
            ),
            overlayColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.hovered)) {
                return AppColors.blue.withValues(alpha: 0.08);
              }
              return null;
            }),
          ),
        ),
      );
}
