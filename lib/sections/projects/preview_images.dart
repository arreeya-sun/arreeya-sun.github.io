import 'package:flutter/material.dart';
import 'package:portfolio_app/gen/assets.gen.dart';
import 'package:portfolio_app/theme/app_colors.dart';
import 'package:portfolio_app/theme/app_spacing.dart';
import 'package:portfolio_app/widgets/gap.dart';

class PreviewImages extends StatelessWidget {
  final List<AssetGenImage> screenshots;

  const PreviewImages({super.key, this.screenshots = const []});

  static const _slotCount = 3;
  static const _aspectRatio = 1179 / 2556;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: List.generate(_slotCount, (i) {
        final hasScreenshot = i < screenshots.length;
        return Expanded(
          child: AspectRatio(
            aspectRatio: _aspectRatio,
            child: hasScreenshot
                ? _screenshot(screenshots[i], index: i)
                : _placeholder(i),
          ),
        );
      }),
    );
  }

  Widget _screenshot(AssetGenImage asset, {required int index}) {
    return _frame(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12 - 1.5),
        child: asset.image(
          fit: BoxFit.cover,
          errorBuilder: (_, _, _) => _placeholder(index),
        ),
      ),
    );
  }

  Widget _placeholder(int i) {
    return _frame(
      color: AppColors.blueLight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.image_outlined,
            color: AppColors.blueMid,
            size: 20,
          ),
          const Gap(AppSpacing.space4),
          Text(
            'Screenshot ${i + 1}',
            style: const TextStyle(
              fontSize: 9,
              color: AppColors.blueMid,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _frame({required Widget child, Color? color}) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: AppColors.blueMid, width: 1.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
