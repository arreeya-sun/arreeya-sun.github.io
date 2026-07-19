import 'package:flutter/material.dart';
import 'package:portfolio_app/data/project_data.dart';
import 'package:portfolio_app/models/project.dart';
import 'package:portfolio_app/sections/projects/app_header.dart';
import 'package:portfolio_app/sections/projects/features_block.dart';
import 'package:portfolio_app/sections/projects/preview_images.dart';
import 'package:portfolio_app/sections/projects/store_buttons.dart';
import 'package:portfolio_app/sections/projects/tech_block.dart' show TechBlock;
import 'package:portfolio_app/theme/app_colors.dart';
import 'package:portfolio_app/theme/app_text_styles.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 28,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _header(),
        _body(),
      ],
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        const Text('App Portfolio', style: AppTextStyles.subheading),
        Text('${projects.length} apps', style: AppTextStyles.meta),
      ],
    );
  }

  Widget _body() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: projects.length,
      separatorBuilder: (_, _) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 48),
        child: Divider(color: AppColors.border, height: 1),
      ),
      itemBuilder: (_, i) => _card(project: projects[i]),
    );
  }

  Widget _card({required Project project}) {
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppHeader(project: project),
        PreviewImages(screenshots: project.screenshots),
        Text(project.description, style: AppTextStyles.body),
        TechBlock(tags: project.techStack),
        FeaturesBlock(features: project.features),
        StoreButtons(
          appStoreUrl: project.appStoreUrl,
          playStoreUrl: project.playStoreUrl,
        ),
      ],
    );
  }
}
