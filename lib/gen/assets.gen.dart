// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/logo_i_thesis.webp
  AssetGenImage get logoIThesis =>
      const AssetGenImage('assets/icons/logo_i_thesis.webp');

  /// File path: assets/icons/logo_ku_grad_life.webp
  AssetGenImage get logoKuGradLife =>
      const AssetGenImage('assets/icons/logo_ku_grad_life.webp');

  /// File path: assets/icons/logo_lpg.webp
  AssetGenImage get logoLpg =>
      const AssetGenImage('assets/icons/logo_lpg.webp');

  /// File path: assets/icons/logo_rizz_up.webp
  AssetGenImage get logoRizzUp =>
      const AssetGenImage('assets/icons/logo_rizz_up.webp');

  /// List of all assets
  List<AssetGenImage> get values => [
    logoIThesis,
    logoKuGradLife,
    logoLpg,
    logoRizzUp,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ithesis_chat.png
  AssetGenImage get ithesisChat =>
      const AssetGenImage('assets/images/ithesis_chat.png');

  /// File path: assets/images/ithesis_home.png
  AssetGenImage get ithesisHome =>
      const AssetGenImage('assets/images/ithesis_home.png');

  /// File path: assets/images/ithesis_plag.png
  AssetGenImage get ithesisPlag =>
      const AssetGenImage('assets/images/ithesis_plag.png');

  /// File path: assets/images/ku_card.png
  AssetGenImage get kuCard => const AssetGenImage('assets/images/ku_card.png');

  /// File path: assets/images/ku_home.png
  AssetGenImage get kuHome => const AssetGenImage('assets/images/ku_home.png');

  /// File path: assets/images/ku_login.png
  AssetGenImage get kuLogin =>
      const AssetGenImage('assets/images/ku_login.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/lpg_chat.png
  AssetGenImage get lpgChat =>
      const AssetGenImage('assets/images/lpg_chat.png');

  /// File path: assets/images/lpg_login.png
  AssetGenImage get lpgLogin =>
      const AssetGenImage('assets/images/lpg_login.png');

  /// File path: assets/images/lpg_order.png
  AssetGenImage get lpgOrder =>
      const AssetGenImage('assets/images/lpg_order.png');

  /// File path: assets/images/rizzup_catalog.png
  AssetGenImage get rizzupCatalog =>
      const AssetGenImage('assets/images/rizzup_catalog.png');

  /// File path: assets/images/rizzup_chat.png
  AssetGenImage get rizzupChat =>
      const AssetGenImage('assets/images/rizzup_chat.png');

  /// File path: assets/images/rizzup_event.png
  AssetGenImage get rizzupEvent =>
      const AssetGenImage('assets/images/rizzup_event.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    ithesisChat,
    ithesisHome,
    ithesisPlag,
    kuCard,
    kuHome,
    kuLogin,
    logo,
    lpgChat,
    lpgLogin,
    lpgOrder,
    rizzupCatalog,
    rizzupChat,
    rizzupEvent,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
