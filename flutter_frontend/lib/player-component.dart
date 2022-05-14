import 'package:flame/components.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/services.dart';

class Player extends SpriteComponent with KeyboardHandler{
  Player() : super(size: Vector2(20,60));

  Vector2 direction = Vector2.zero();
  static const speed = 100.0;

  @override
  void update(double dt){
    super.update(dt);
    final newPosition = position + direction * speed * dt;

    position
    ..x = newPosition.x
    ..y = newPosition.y;
  }
  @override
  bool onKeyEvent(
      RawKeyEvent event,
      Set<LogicalKeyboardKey> keysPressed,
      ){
    final isDown = event is RawKeyDownEvent;

    if(event.logicalKey == LogicalKeyboardKey.arrowLeft){
      direction.x = isDown ? -1 :0;
      return true;
    }
    if(event.logicalKey == LogicalKeyboardKey.arrowRight){
      direction.x = isDown ? 1 : 0;
      return true;
    }
    if(event.logicalKey == LogicalKeyboardKey.arrowDown){
      direction.y = isDown ? -1 :0;
      return true;
    }
    if(event.logicalKey == LogicalKeyboardKey.arrowUp){
      direction.y = isDown ? 1 : 0;
      return true;
    }
    return false;
  }
}