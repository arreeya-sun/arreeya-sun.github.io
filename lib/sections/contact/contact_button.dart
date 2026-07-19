import 'package:flutter/material.dart';
import 'package:portfolio_app/data/profile_data.dart';
import 'package:portfolio_app/theme/app_colors.dart';
import 'package:portfolio_app/utils/external_launcher.dart';

class ContactButton extends StatefulWidget {
  const ContactButton({super.key});

  @override
  State<ContactButton> createState() => ContactButtonState();
}

class ContactButtonState extends State<ContactButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ExternalLauncher.email(context, profile.email),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => _hovered = true),
        onExit: (_) => setState(() => _hovered = false),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 150),
          opacity: _hovered ? 0.88 : 1.0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Contact me →',
              style: TextStyle(
                fontSize: 12.5,
                fontWeight: FontWeight.w700,
                color: AppColors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
