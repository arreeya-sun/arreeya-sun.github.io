import 'package:flutter/widgets.dart';
import 'package:portfolio_app/theme/app_colors.dart';
import 'package:portfolio_app/theme/app_text_styles.dart';

class Tile extends StatelessWidget {
  final String text;
  const Tile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 6, right: 8),
            child: Container(
              width: 6,
              height: 6,
              decoration: const BoxDecoration(
                color: AppColors.blue,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: AppTextStyles.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
