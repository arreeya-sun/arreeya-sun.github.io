import 'package:flutter/material.dart';
import 'package:portfolio_app/sections/contact/contact_section.dart';
import 'package:portfolio_app/sections/experience/experience_section.dart';
import 'package:portfolio_app/sections/profile/profile_section.dart';
import 'package:portfolio_app/sections/projects/projects_section.dart';
import 'package:portfolio_app/sections/skills/skills_section.dart';
import 'package:portfolio_app/theme/app_theme.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const _PortfolioView(),
    );
  }
}

class _PortfolioView extends StatelessWidget {
  const _PortfolioView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 680),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(24, 40, 24, 80),
              child: Column(
                spacing: 40,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileSection(),
                  SkillsSection(),
                  ProjectsSection(),
                  ExperienceSection(),
                  ContactSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
