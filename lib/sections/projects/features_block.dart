import 'package:flutter/material.dart';
import 'package:portfolio_app/theme/app_spacing.dart';
import 'package:portfolio_app/widgets/gap.dart';
import 'package:portfolio_app/widgets/section_label.dart';
import 'package:portfolio_app/widgets/tile.dart';

class FeaturesBlock extends StatelessWidget {
  final List<String> features;

  const FeaturesBlock({super.key, required this.features});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionLabel('What I Built'),
        const Gap(AppSpacing.space8),
        ...features.map((feature) => Tile(text: feature)),
      ],
    );
  }
}
