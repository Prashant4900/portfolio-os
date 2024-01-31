/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class $AssetsAudioGen {
  const $AssetsAudioGen();

  /// File path: assets/audio/snake_music.mp3
  String get snakeMusic => 'assets/audio/snake_music.mp3';

  /// List of all assets
  List<String> get values => [snakeMusic];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/dino.png
  AssetGenImage get dino => const AssetGenImage('assets/images/dino.png');

  /// File path: assets/images/flappy-bird-background.jpeg
  AssetGenImage get flappyBirdBackground =>
      const AssetGenImage('assets/images/flappy-bird-background.jpeg');

  /// File path: assets/images/flappy-bird-ground.png
  AssetGenImage get flappyBirdGround =>
      const AssetGenImage('assets/images/flappy-bird-ground.png');

  /// File path: assets/images/flappy-bird.png
  AssetGenImage get flappyBird =>
      const AssetGenImage('assets/images/flappy-bird.png');

  /// File path: assets/images/full-screen.png
  AssetGenImage get fullScreen =>
      const AssetGenImage('assets/images/full-screen.png');

  /// File path: assets/images/grass-background.jpeg
  AssetGenImage get grassBackground =>
      const AssetGenImage('assets/images/grass-background.jpeg');

  /// File path: assets/images/macos-background.jpeg
  AssetGenImage get macosBackground =>
      const AssetGenImage('assets/images/macos-background.jpeg');

  /// File path: assets/images/snake.png
  AssetGenImage get snake => const AssetGenImage('assets/images/snake.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        dino,
        flappyBirdBackground,
        flappyBirdGround,
        flappyBird,
        fullScreen,
        grassBackground,
        macosBackground,
        snake
      ];
}

class $AssetsMacosGen {
  const $AssetsMacosGen();

  $AssetsMacosImagesGen get images => const $AssetsMacosImagesGen();
  $AssetsMacosLottieGen get lottie => const $AssetsMacosLottieGen();
  $AssetsMacosSvgGen get svg => const $AssetsMacosSvgGen();
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/app-store.svg
  SvgGenImage get appStore => const SvgGenImage('assets/svg/app-store.svg');

  /// File path: assets/svg/apple.svg
  SvgGenImage get apple => const SvgGenImage('assets/svg/apple.svg');

  /// File path: assets/svg/cc.svg
  SvgGenImage get cc => const SvgGenImage('assets/svg/cc.svg');

  /// File path: assets/svg/finder.svg
  SvgGenImage get finder => const SvgGenImage('assets/svg/finder.svg');

  /// File path: assets/svg/mail.svg
  SvgGenImage get mail => const SvgGenImage('assets/svg/mail.svg');

  /// File path: assets/svg/message.svg
  SvgGenImage get message => const SvgGenImage('assets/svg/message.svg');

  /// File path: assets/svg/notes.svg
  SvgGenImage get notes => const SvgGenImage('assets/svg/notes.svg');

  /// File path: assets/svg/phone.svg
  SvgGenImage get phone => const SvgGenImage('assets/svg/phone.svg');

  /// File path: assets/svg/safari.svg
  SvgGenImage get safari => const SvgGenImage('assets/svg/safari.svg');

  /// File path: assets/svg/spotify.svg
  SvgGenImage get spotify => const SvgGenImage('assets/svg/spotify.svg');

  /// File path: assets/svg/system-pref.svg
  SvgGenImage get systemPref => const SvgGenImage('assets/svg/system-pref.svg');

  /// File path: assets/svg/vs-code.svg
  SvgGenImage get vsCode => const SvgGenImage('assets/svg/vs-code.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        appStore,
        apple,
        cc,
        finder,
        mail,
        message,
        notes,
        phone,
        safari,
        spotify,
        systemPref,
        vsCode
      ];
}

class $AssetsMacosImagesGen {
  const $AssetsMacosImagesGen();

  /// File path: assets/macos/images/app-store.png
  AssetGenImage get appStore =>
      const AssetGenImage('assets/macos/images/app-store.png');

  /// File path: assets/macos/images/mail.png
  AssetGenImage get mail => const AssetGenImage('assets/macos/images/mail.png');

  /// File path: assets/macos/images/message.png
  AssetGenImage get message =>
      const AssetGenImage('assets/macos/images/message.png');

  /// File path: assets/macos/images/notes.png
  AssetGenImage get notes =>
      const AssetGenImage('assets/macos/images/notes.png');

  /// File path: assets/macos/images/snake.png
  AssetGenImage get snake =>
      const AssetGenImage('assets/macos/images/snake.png');

  /// File path: assets/macos/images/system-pref.png
  AssetGenImage get systemPref =>
      const AssetGenImage('assets/macos/images/system-pref.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [appStore, mail, message, notes, snake, systemPref];
}

class $AssetsMacosLottieGen {
  const $AssetsMacosLottieGen();

  /// File path: assets/macos/lottie/siri.json
  LottieGenImage get siri =>
      const LottieGenImage('assets/macos/lottie/siri.json');

  /// List of all assets
  List<LottieGenImage> get values => [siri];
}

class $AssetsMacosSvgGen {
  const $AssetsMacosSvgGen();

  /// File path: assets/macos/svg/battery-mid.svg
  SvgGenImage get batteryMid =>
      const SvgGenImage('assets/macos/svg/battery-mid.svg');

  /// List of all assets
  List<SvgGenImage> get values => [batteryMid];
}

class Assets {
  Assets._();

  static const $AssetsAudioGen audio = $AssetsAudioGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsMacosGen macos = $AssetsMacosGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
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

class LottieGenImage {
  const LottieGenImage(this._assetName);

  final String _assetName;

  LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    LottieDelegates? delegates,
    LottieOptions? options,
    void Function(LottieComposition)? onLoaded,
    LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(BuildContext, Widget, LottieComposition?)? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    String? package,
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
  }) {
    return Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
