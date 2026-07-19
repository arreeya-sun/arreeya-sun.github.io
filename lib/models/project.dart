import 'package:portfolio_app/gen/assets.gen.dart';

class Project {
  final String title;
  final String? provider;
  final String category;
  final String platform;
  final String description;
  final List<String> techStack;
  final List<String> features;
  final AssetGenImage? iconAsset;
  final List<AssetGenImage> screenshots;
  final String? appStoreUrl;
  final String? playStoreUrl;

  const Project({
    required this.title,
    required this.provider,
    required this.category,
    required this.platform,
    required this.description,
    required this.techStack,
    required this.features,
    this.iconAsset,
    this.screenshots = const [],
    this.appStoreUrl,
    this.playStoreUrl,
  });
}
