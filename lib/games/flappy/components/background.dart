import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:portfolio/games/flappy/flappy_bird_game.dart';

class FlappyBirdBackground extends SpriteComponent
    with HasGameRef<MyFlappyBirdGame> {
  @override
  FutureOr<void> onLoad() async {
    final background = await Flame.images.load('flappy-bird-background.jpeg');

    size = gameRef.size;

    sprite = Sprite(background);

    return super.onLoad();
  }
}
