import 'package:flutter/material.dart';
import 'package:portfolio_app/models/profile.dart';
import 'package:portfolio_app/theme/app_colors.dart';
import 'package:portfolio_app/theme/app_spacing.dart';
import 'package:portfolio_app/utils/external_launcher.dart';
import 'package:portfolio_app/widgets/gap.dart';

class ContactChip extends StatefulWidget {
  final IconData icon;
  final String label;
  final ContactAction action;
  final String? url;

  const ContactChip({
    super.key,
    required this.icon,
    required this.label,
    required this.action,
    this.url,
  });

  @override
  State<ContactChip> createState() => _ContactChipState();
}

class _ContactChipState extends State<ContactChip> {
  bool _hovered = false;

  Future<void> _handleTap() => switch (widget.action) {
    ContactAction.email => ExternalLauncher.email(context, widget.label),
    ContactAction.phone => ExternalLauncher.phone(context, widget.label),
    ContactAction.link => ExternalLauncher.link(widget.url!),
  };

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => _hovered = true),
        onExit: (_) => setState(() => _hovered = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
          decoration: BoxDecoration(
            color: _hovered ? AppColors.blueLight : Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: _hovered ? AppColors.blue : AppColors.border,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                widget.icon,
                size: 14,
                color: _hovered ? AppColors.blue : AppColors.text,
              ),
              const Gap(AppSpacing.space8),
              Text(
                widget.label,
                style: TextStyle(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w600,
                  color: _hovered ? AppColors.blue : AppColors.text,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
