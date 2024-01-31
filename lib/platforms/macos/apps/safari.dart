// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:ui_web' as ui;

import 'package:flutter/material.dart';
import 'package:portfolio/constants/common.dart';
import 'package:portfolio/constants/urls.dart';
import 'package:portfolio/platforms/macos/app_body.dart';
import 'package:portfolio/utils/apps_provider.dart';
import 'package:provider/provider.dart';

class MySafariApp extends StatefulWidget {
  const MySafariApp({
    super.key,
  });

  @override
  State<MySafariApp> createState() => _MySafariAppState();
}

class _MySafariAppState extends State<MySafariApp> {
  bool _showFullSize = false;

  Offset? position;

  final html.IFrameElement _iframeElementURL = html.IFrameElement();

  @override
  void initState() {
    position = const Offset(200, 60);
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
    return Container(
      width: MediaQuery.sizeOf(context).width * (_showFullSize ? 1 : .7),
      height: MediaQuery.sizeOf(context).height * (_showFullSize ? 1 : .75),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          InkWell(
            onDoubleTap: () {
              setState(() {
                _showFullSize = !_showFullSize;
              });
            },
            child: Container(
              height: 30,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Row(
                children: [
                  horizontalMargin16,
                  InkWell(
                    onTap: () {
                      context.read<AppsProvider>().close();
                    },
                    child: const CircleAvatar(
                      radius: 5.5,
                      backgroundColor: Colors.red,
                    ),
                  ),
                  horizontalMargin8,
                  InkWell(
                    onDoubleTap: () {},
                    child: const CircleAvatar(
                      radius: 5.5,
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                  horizontalMargin8,
                  InkWell(
                    onTap: () {
                      setState(() {
                        _showFullSize = true;
                      });
                    },
                    child: const CircleAvatar(
                      radius: 5.5,
                      backgroundColor: Colors.green,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Safari',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  horizontalMargin48,
                  const Spacer(),
                ],
              ),
            ),
          ),
          Expanded(
            child: AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              top: position!.dy,
              left: position!.dx,
              child: const MacAppBody(
                title: 'Spotify',
                child: ColoredBox(
                  color: Color(0xFF535353),
                  child: HtmlElementView(
                    viewType: 'spotifyIframe',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
