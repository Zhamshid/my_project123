/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/services.dart';
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  /// File path: assets/images/svg/flag_kz.svg
  SvgGenImage get flagKz => const SvgGenImage('assets/images/svg/flag_kz.svg');

  /// File path: assets/images/svg/flag_ru.svg
  SvgGenImage get flagRu => const SvgGenImage('assets/images/svg/flag_ru.svg');

  /// File path: assets/images/svg/ic_back.svg
  SvgGenImage get icBack => const SvgGenImage('assets/images/svg/ic_back.svg');

  /// File path: assets/images/svg/ic_bbc_news.svg
  SvgGenImage get icBbcNews =>
      const SvgGenImage('assets/images/svg/ic_bbc_news.svg');

  /// File path: assets/images/svg/ic_cnbc.svg
  SvgGenImage get icCnbc => const SvgGenImage('assets/images/svg/ic_cnbc.svg');

  /// File path: assets/images/svg/ic_forward.svg
  SvgGenImage get icForward =>
      const SvgGenImage('assets/images/svg/ic_forward.svg');

  /// File path: assets/images/svg/ic_home_active.svg
  SvgGenImage get icHomeActive =>
      const SvgGenImage('assets/images/svg/ic_home_active.svg');

  /// File path: assets/images/svg/ic_home_inactive.svg
  SvgGenImage get icHomeInactive =>
      const SvgGenImage('assets/images/svg/ic_home_inactive.svg');

  /// File path: assets/images/svg/ic_localizations.svg
  SvgGenImage get icLocalizations =>
      const SvgGenImage('assets/images/svg/ic_localizations.svg');

  /// File path: assets/images/svg/ic_logout.svg
  SvgGenImage get icLogout =>
      const SvgGenImage('assets/images/svg/ic_logout.svg');

  /// File path: assets/images/svg/ic_profile_active.svg
  SvgGenImage get icProfileActive =>
      const SvgGenImage('assets/images/svg/ic_profile_active.svg');

  /// File path: assets/images/svg/ic_profile_inactive.svg
  SvgGenImage get icProfileInactive =>
      const SvgGenImage('assets/images/svg/ic_profile_inactive.svg');

  /// File path: assets/images/svg/ic_scmp.svg
  SvgGenImage get icScmp => const SvgGenImage('assets/images/svg/ic_scmp.svg');

  /// File path: assets/images/svg/ic_usa_today.svg
  SvgGenImage get icUsaToday =>
      const SvgGenImage('assets/images/svg/ic_usa_today.svg');

  /// File path: assets/images/svg/ic_user.svg
  SvgGenImage get icUser => const SvgGenImage('assets/images/svg/ic_user.svg');

  /// File path: assets/images/svg/ic_vox.svg
  SvgGenImage get icVox => const SvgGenImage('assets/images/svg/ic_vox.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        flagKz,
        flagRu,
        icBack,
        icBbcNews,
        icCnbc,
        icForward,
        icHomeActive,
        icHomeInactive,
        icLocalizations,
        icLogout,
        icProfileActive,
        icProfileInactive,
        icScmp,
        icUsaToday,
        icUser,
        icVox
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
