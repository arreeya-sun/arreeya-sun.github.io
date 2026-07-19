import 'package:flutter/material.dart';
import 'package:portfolio_app/gen/assets.gen.dart';
import 'package:portfolio_app/models/project.dart';
import 'package:portfolio_app/theme/app_colors.dart';
import 'package:portfolio_app/theme/app_spacing.dart';
import 'package:portfolio_app/theme/app_text_styles.dart';
import 'package:portfolio_app/widgets/gap.dart';

class AppHeader extends StatelessWidget {
  final Project project;
  const AppHeader({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 14,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _appIcon(project.iconAsset),
        _label(),
      ],
    );
  }

  Widget _appIcon(AssetGenImage? iconAsset) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: SizedBox(
        width: 56,
        height: 56,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.blueLight,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.border),
          ),
          child: iconAsset != null
              ? iconAsset.image(
                  width: 56,
                  height: 56,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) => _iconFallback(),
                )
              : _iconFallback(),
        ),
      ),
    );
  }

  Widget _label() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(project.category.toUpperCase(), style: AppTextStyles.label),
              const Gap(AppSpacing.space8),
              Text(project.platform, style: AppTextStyles.platform),
            ],
          ),
          const Gap(AppSpacing.space4),
          Text(project.title, style: AppTextStyles.title),
          const Gap(AppSpacing.space2),
          if (project.provider != null) ...[
            Text(project.provider!, style: AppTextStyles.meta),
          ],
        ],
      ),
    );
  }

  Widget _iconFallback() {
    return const Icon(
      Icons.phone_iphone_rounded,
      color: AppColors.blue,
      size: 28,
    );
  }
}
