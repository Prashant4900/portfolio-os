// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html';

import 'package:battery_plus/battery_plus.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/common.dart';
import 'package:portfolio/games/flappy/flappy_bird_game.dart';
import 'package:portfolio/games/game_window.dart';
import 'package:portfolio/games/snake/snake_game.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/platforms/macos/dock.dart';
import 'package:portfolio/platforms/macos/status_bar.dart';
import 'package:portfolio/utils/apps_provider.dart';
import 'package:provider/provider.dart';

Future<String> getBatteryPercentage() async {
  final battery = Battery();

  final percentage = await battery.batteryLevel;

  return '$percentage%';
}

class MyMacosHomeScreen extends StatelessWidget {
  const MyMacosHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.macosBackground.path),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            const MacStatusBarWidget(),
            Expanded(
              child: Consumer<AppsProvider>(
                builder: (context, ref, child) {
                  return Stack(
                    children: [
                      SizedBox.expand(
                        child: Padding(
                          padding: allPadding16,
                          child: Wrap(
                            runSpacing: 20,
                            spacing: 50,
                            children: [
                              DesktopIcon(
                                genImage: Assets.images.fullScreen,
                                label: 'FullScreen',
                                onDoubleTap: () {
                                  document.documentElement?.requestFullscreen();
                                },
                              ),
                              DesktopIcon(
                                genImage: Assets.images.snake,
                                label: 'Snake',
                                onDoubleTap: () {
                                  context.read<AppsProvider>().open(
                                        MyGameWindow(
                                          game: snakeGame,
                                          title: 'Snake Game',
                                        ),
                                      );
                                },
                              ),
                              DesktopIcon(
                                genImage: Assets.images.flappyBird,
                                label: 'Flappy Bird',
                                onDoubleTap: () {
                                  context.read<AppsProvider>().open(
                                        MyGameWindow(
                                          game: flappyBirdGame,
                                          title: 'Flappy Bird',
                                        ),
                                      );
                                },
                              ),
                              DesktopIcon(
                                genImage: Assets.images.dino,
                                label: 'Dino',
                              ),
                            ],
                          ),
                        ),
                      ),
                      ...[...ref.openApps],
                    ],
                  );
                },
              ),
            ),
            const MacDockWidget(),
          ],
        ),
      ),
    );
  }
}

class DesktopIcon extends StatelessWidget {
  const DesktopIcon({
    required this.genImage,
    required this.label,
    super.key,
    this.onDoubleTap,
  });

  final AssetGenImage genImage;
  final String label;
  // ignore: inference_failure_on_function_return_type
  final Function()? onDoubleTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onDoubleTap: onDoubleTap,
      child: Column(
        children: [
          genImage.image(width: 55),
          verticalMargin4,
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
