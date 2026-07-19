import 'package:flutter/material.dart';
import 'package:portfolio_app/models/experience.dart';
import 'package:portfolio_app/theme/app_colors.dart';
import 'package:portfolio_app/theme/app_spacing.dart';
import 'package:portfolio_app/theme/app_text_styles.dart';
import 'package:portfolio_app/widgets/gap.dart';
import 'package:portfolio_app/widgets/tile.dart';

class ExperienceCard extends StatelessWidget {
  final Experience experience;

  const ExperienceCard({super.key, required this.experience});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          const Gap(AppSpacing.space16),
          Text(
            experience.summary,
            style: AppTextStyles.bodySmall
          ),
          const Gap(AppSpacing.space8),
          ...experience.details.map(
            (point) => Tile(text: point),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Column(
      spacing: 2,
      children: [
        Row(
          children: [
            _buildRole(),
            const Gap(AppSpacing.space8),
            Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerRight,
                child: Text(
                  experience.periodLabel,
                  style: AppTextStyles.metaSemiBold,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: _buildCompanyAndLocation(),
              ),
            ),
            const Gap(AppSpacing.space8),
            Text(
              experience.duration,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.textFaint,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildRole() {
    return Text(
      experience.role,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: AppColors.blue,
      ),
    );
  }

  Widget _buildCompanyAndLocation() {
    final rest = [
      experience.employmentType,
      experience.location,
      if (experience.locationType != null) experience.locationType!,
    ].join(' · ');

    return Text.rich(
      TextSpan(
        style: AppTextStyles.meta,
        children: [
          TextSpan(
            text: experience.company,
            style: AppTextStyles.meta.copyWith(fontWeight: FontWeight.w700),
          ),
          TextSpan(text: ' · $rest'),
        ],
      ),
    );
  }
}
