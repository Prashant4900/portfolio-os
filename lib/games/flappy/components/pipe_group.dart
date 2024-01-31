import 'dart:async';
import 'dart:developer' as dev;
import 'dart:math' as math;

import 'package:flame/components.dart';
import 'package:portfolio/games/flappy/components/pipe.dart';
import 'package:portfolio/games/flappy/configuration.dart';
import 'package:portfolio/games/flappy/flappy_bird_game.dart';

class PipeGroup extends PositionComponent with HasGameRef<MyFlappyBirdGame> {
  final _random = math.Random();
  @override
  FutureOr<void> onLoad() {
    position.x = gameRef.size.x;

    final heightMinusGround = gameRef.size.y - Config.groundHeight;
    final spacing = 100 + _random.nextDouble() * (heightMinusGround / 4);
    final centerY =
        spacing + _random.nextDouble() * (heightMinusGround - spacing);

    addAll([
      Pipe(pipePosition: PipePosition.top, height: centerY - spacing / 2),
      Pipe(
        pipePosition: PipePosition.bottom,
        height: heightMinusGround - (centerY + spacing / 2),
      ),
    ]);
    return super.onLoad();
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.x -= Config.gameSpeed * dt;

    if (position.x < -10) {
      removeFromParent();
      dev.log('Removed');
    }
  }
}
