import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/parallax.dart';
import 'package:portfolio/games/flappy/configuration.dart';
import 'package:portfolio/games/flappy/flappy_bird_game.dart';

class FlappyBirdGround extends ParallaxComponent<MyFlappyBirdGame>
    with HasGameRef<MyFlappyBirdGame> {
  @override
  FutureOr<void> onLoad() async {
    final ground = await Flame.images.load('flappy-bird-ground.png');
    parallax = Parallax([
      ParallaxLayer(
        ParallaxImage(
          ground,
          fill: LayerFill.none,
        ),
      ),
    ]);
    add(
      RectangleHitbox(
        position: Vector2(0, gameRef.size.y - Config.groundHeight),
        size: Vector2(gameRef.size.x, Config.groundHeight),
      ),
    );

    return super.onLoad();
  }

  @override
  void update(double dt) {
    super.update(dt);
    parallax?.baseVelocity.x = Config.gameSpeed;
  }
}
