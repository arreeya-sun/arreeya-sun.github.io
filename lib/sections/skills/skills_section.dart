import 'package:flutter/material.dart';
import 'package:portfolio_app/data/skill_data.dart';
import 'package:portfolio_app/theme/app_spacing.dart';
import 'package:portfolio_app/widgets/gap.dart';
import 'package:portfolio_app/widgets/pill.dart';
import 'package:portfolio_app/widgets/section_label.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionLabel('Skills'),
        const Gap(AppSpacing.space12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: skills.map((skill) => Pill(label: skill)).toList(),
        ),
      ],
    );
  }
}
