import 'package:flutter/material.dart';
import 'package:portfolio_app/data/profile_data.dart';
import 'package:portfolio_app/theme/app_colors.dart';
import 'package:portfolio_app/theme/app_spacing.dart';
import 'package:portfolio_app/theme/app_text_styles.dart';
import 'package:portfolio_app/sections/profile/contact_chip.dart';
import 'package:portfolio_app/widgets/gap.dart';
import 'package:portfolio_app/widgets/pill.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _avatar(),
            const Gap(AppSpacing.space16),
            _name(),
          ],
        ),
        const Gap(AppSpacing.space16),
        const Divider(color: AppColors.border, height: 1),
        const Gap(AppSpacing.space20),
        _bio(),
        const Gap(AppSpacing.space20),
        _contactChips(),
      ],
    );
  }

  Widget _avatar() {
    return SizedBox(
      width: 54,
      height: 54,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: AppColors.blue,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            profile.initials,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _name() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          profile.name,
          style: AppTextStyles.headline,
        ),
        const Gap(AppSpacing.space8),
        _roleChips(),
      ],
    );
  }

  Widget _roleChips() {
    return Wrap(
      spacing: 8,
      children: profile.roles
          .map(
            (role) => Pill(
              label: role,
              fontSize: 11,
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 3),
            ),
          )
          .toList(),
    );
  }

  Widget _bio() {
    return Text(
      profile.bio,
      style: AppTextStyles.body,
    );
  }

  Widget _contactChips() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: profile.contacts
          .map(
            (c) => ContactChip(
              icon: c.icon,
              label: c.label,
              action: c.action,
              url: c.url,
            ),
          )
          .toList(),
    );
  }
}
