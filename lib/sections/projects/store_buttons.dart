import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/external_launcher.dart';

class StoreButtons extends StatelessWidget {
  final String? appStoreUrl;
  final String? playStoreUrl;

  const StoreButtons({super.key, this.appStoreUrl, this.playStoreUrl});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        ElevatedButton.icon(
          onPressed: appStoreUrl == null
              ? null
              : () => ExternalLauncher.link(appStoreUrl!),
          icon: const Icon(Icons.apple, size: 14),
          label: const Text('App Store'),
        ),
        OutlinedButton.icon(
          onPressed: playStoreUrl == null
              ? null
              : () => ExternalLauncher.link(playStoreUrl!),
          icon: const Icon(Icons.android, size: 14),
          label: const Text('Play Store'),
        ),
      ],
    );
  }
}
