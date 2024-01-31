import 'dart:async';

import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame/timer.dart';
import 'package:portfolio/games/flappy/components/background.dart';
import 'package:portfolio/games/flappy/components/bird.dart';
import 'package:portfolio/games/flappy/components/ground.dart';
import 'package:portfolio/games/flappy/components/pipe_group.dart';
import 'package:portfolio/games/flappy/configuration.dart';

final flappyBirdGame = GameWidget(game: MyFlappyBirdGame());

class MyFlappyBirdGame extends FlameGame
    with TapDetector, HasCollisionDetection {
  late Bird bird;

  Timer interval = Timer(Config.pipeInterval, repeat: true);

  @override
  FutureOr<void> onLoad() {
    addAll([
      FlappyBirdBackground(),
      FlappyBirdGround(),
      bird = Bird(),
      PipeGroup(),
    ]);

    interval.onTick = () => add(PipeGroup());
    return super.onLoad();
  }

  @override
  void onTap() {
    bird.fly();
    super.onTap();
  }

  @override
  void update(double dt) {
    super.update(dt);
    interval.update(dt);
  }
}
