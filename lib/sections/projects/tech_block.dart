import 'package:flutter/material.dart';
import 'package:portfolio_app/theme/app_colors.dart';
import 'package:portfolio_app/theme/app_spacing.dart';
import 'package:portfolio_app/theme/app_text_styles.dart';
import 'package:portfolio_app/widgets/gap.dart';

class TechBlock extends StatelessWidget {
  final List<String> tags;
  const TechBlock({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.blueLight,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('BUILT WITH', style: AppTextStyles.label),
          const Gap(AppSpacing.space12),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: tags.map((tag) => _tag(label: tag)).toList(),
          ),
        ],
      ),
    );
  }

  Widget _tag({required String label}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: AppColors.blueMid),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 11.5,
          fontWeight: FontWeight.w600,
          color: AppColors.textSub,
        ),
      ),
    );
  }
}