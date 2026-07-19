import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_app/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

abstract final class ExternalLauncher {
  static Future<void> email(BuildContext context, String address) {
    return _launchOrCopy(
      context,
      Uri(scheme: 'mailto', path: address),
      address,
    );
  }

  static Future<void> phone(BuildContext context, String number) {
    return _launchOrCopy(context, Uri(scheme: 'tel', path: number), number);
  }

  static Future<void> link(String url) {
    return launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }

  static bool get _isMobileWeb =>
      kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.iOS ||
          defaultTargetPlatform == TargetPlatform.android);

  static Future<bool> _tryLaunch(Uri uri) async {
    try {
      return await launchUrl(uri);
    } catch (_) {
      return false;
    }
  }

  static Future<void> _launchOrCopy(
    BuildContext context,
    Uri uri,
    String value,
  ) async {
    final isNative = !kIsWeb;
    if (isNative || _isMobileWeb) {
      final launched = await _tryLaunch(uri);
      if (launched && isNative) return;
    }

    await Clipboard.setData(ClipboardData(text: value));
    if (!context.mounted) return;
    _showCopiedSnackBar(context, value);
  }

  static void _showCopiedSnackBar(BuildContext context, String value) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.check_circle_rounded,
                size: 16,
                color: AppColors.blue,
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  'Copied: $value',
                  style: const TextStyle(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w700,
                    color: AppColors.blue,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: AppColors.blueLight,
          duration: const Duration(seconds: 1),
          elevation: 0,
          // Other Style
          // behavior: SnackBarBehavior.floating,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(10),
          //   side: const BorderSide(color: AppColors.blue),
          // ),
          // margin: const EdgeInsets.fromLTRB(24, 0, 24, 24),
        ),
      );
  }
}
