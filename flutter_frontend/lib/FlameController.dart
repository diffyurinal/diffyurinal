import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_frontend/Player.dart';

//basic 2d movement
class FlameController extends FlameGame with KeyboardEvents{
  static const _size = 100.0;

  Player player = new Player();

  FlameController(){
    player.initialize();
}
  @override
  void render(Canvas canvas){
    super.render(canvas);
    final rect = Rect.fromLTWH(player.getXPos(), player.getYPos(), player.getSize(), player.getSize());
    canvas.drawRect(rect,player.getPaint());
  }
  @override
  KeyEventResult onKeyEvent(
      RawKeyEvent event,
      Set<LogicalKeyboardKey> keysPressed,
      ) {
    final isKeyDown = event is RawKeyDownEvent;
    if(keysPressed.contains(LogicalKeyboardKey.arrowLeft) && isKeyDown){
      player.setXPos(player.getXPos() - 10.0);
      print("left");
    } else if(
    keysPressed.contains(LogicalKeyboardKey.arrowRight) && isKeyDown
    ){
      player.setXPos(player.getXPos() + 10.0);
      print("right");
    }
    if(keysPressed.contains(LogicalKeyboardKey.arrowUp) && isKeyDown){
      player.setYPos(player.getYPos() - 10.0);
      print("up");
    } else if(
    keysPressed.contains(LogicalKeyboardKey.arrowDown) && isKeyDown
    ){
      player.setYPos(player.getYPos() + 10.0);
      print("down");
    }

    return KeyEventResult.handled;
  }
}