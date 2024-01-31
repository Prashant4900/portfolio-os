import 'dart:async';
import 'dart:developer' as dev;

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/games/flappy/configuration.dart';
import 'package:portfolio/games/flappy/flappy_bird_game.dart';

class Bird extends SpriteGroupComponent<BirdMovement>
    with HasGameRef<MyFlappyBirdGame>, CollisionCallbacks {
  @override
  FutureOr<void> onLoad() async {
    final birdUp = await gameRef.loadSprite('flappy-bird.png');
    final birdMid = await gameRef.loadSprite('flappy-bird.png');
    final birdDown = await gameRef.loadSprite('flappy-bird.png');

    size = Vector2(70, 60);
    current = BirdMovement.middle;
    position = Vector2(50, gameRef.size.y / 2 - size.y / 2);

    sprites = {
      BirdMovement.down: birdDown,
      BirdMovement.up: birdUp,
      BirdMovement.middle: birdMid,
    };
    add(CircleHitbox());
    return super.onLoad();
  }

  @override
  void update(double dt) {
    position.y += Config.birdVelocity * dt;
    super.update(dt);
  }

  @override
  void onCollisionStart(
    Set<Vector2> intersectionPoints,
    PositionComponent other,
  ) {
    dev.log('Collision Detected');
    gameOver();
    super.onCollisionStart(intersectionPoints, other);
  }

  void gameOver() {
    gameRef.pauseEngine();
  }

  void fly() {
    add(
      MoveByEffect(
        Vector2(0, Config.gravity),
        EffectController(
          duration: 0.2,
          curve: Curves.decelerate,
        ),
        onComplete: () {
          current = BirdMovement.down;
        },
      ),
    );
    current = BirdMovement.up;
  }
}
