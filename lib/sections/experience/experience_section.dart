import 'package:flutter/material.dart';
import 'package:portfolio_app/sections/experience/experience_card.dart';
import 'package:portfolio_app/data/experience_data.dart';
import 'package:portfolio_app/widgets/section_label.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionLabel('Experience'),
        ...experiences.map(
          (e) => ExperienceCard(experience: e),
        ),
      ],
    );
  }
}
