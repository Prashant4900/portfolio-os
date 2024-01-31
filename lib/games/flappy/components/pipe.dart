import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:portfolio/games/flappy/configuration.dart';
import 'package:portfolio/games/flappy/flappy_bird_game.dart';

class Pipe extends SpriteComponent with HasGameRef<MyFlappyBirdGame> {
  Pipe({required this.height, required this.pipePosition});

  @override
  final double height;
  final PipePosition pipePosition;

  @override
  FutureOr<void> onLoad() async {
    final bottomPipe = await Flame.images.load('pipe-bottom.png');
    final topPipe = await Flame.images.load('pipe-top.png');

    size = Vector2(50, height);

    switch (pipePosition) {
      case PipePosition.top:
        position.y = 0;
        sprite = Sprite(topPipe);
      case PipePosition.bottom:
        position.y = gameRef.size.y - size.y - Config.groundHeight;
        sprite = Sprite(bottomPipe);
    }

    add(RectangleHitbox());
    return super.onLoad();
  }
}
