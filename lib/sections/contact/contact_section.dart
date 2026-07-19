import 'package:flutter/material.dart';
import 'package:portfolio_app/sections/contact/contact_button.dart';
import 'package:portfolio_app/theme/app_colors.dart';
import 'package:portfolio_app/theme/app_spacing.dart';
import 'package:portfolio_app/widgets/gap.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Let\'s build something together',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Open to full-time roles · Flutter · Mobile development',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white.withValues(alpha: 0.67),
                  ),
                ),
              ],
            ),
          ),
          const Gap(AppSpacing.space16),
          const ContactButton(),
        ],
      ),
    );
  }
}


