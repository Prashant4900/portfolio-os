// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:ui_web' as ui;

import 'package:flutter/material.dart';
import 'package:portfolio/constants/urls.dart';
import 'package:portfolio/platforms/macos/app_body.dart';

class MySpotifyApp extends StatefulWidget {
  const MySpotifyApp({this.backgroundColor, super.key, this.initPos});
  final Offset? initPos;
  final Color? backgroundColor;

  @override
  State<MySpotifyApp> createState() => _MySpotifyAppState();
}

class _MySpotifyAppState extends State<MySpotifyApp> {
  Offset? position = Offset.zero;

  final html.IFrameElement _iframeElementURL = html.IFrameElement();

  @override
  void initState() {
    position = widget.initPos;
    super.initState();
    _iframeElementURL.src = AppURLs.spotify;
    _iframeElementURL.style.border = 'none';
    _iframeElementURL
      ..allow = 'autoplay; encrypted-media;'
      ..allowFullscreen = true;

    ui.platformViewRegistry.registerViewFactory(
      'spotifyIframe',
      (int viewId) => _iframeElementURL,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MacAppBody(
      title: 'Spotify',
      child: ColoredBox(
        color: widget.backgroundColor ?? const Color(0xFF535353),
        child: const HtmlElementView(
          viewType: 'spotifyIframe',
        ),
      ),
    );
  }
}
