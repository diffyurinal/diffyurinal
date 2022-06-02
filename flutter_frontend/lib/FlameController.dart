import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//basic 2d movement
class flame-controller extends FlameGame{
  static const _size = 100.0;

  final paint = Paint()..color = Colors.lightGreen;

  double _x = 0.0;
  double _y = 0.0;

  flame-controller(){
    
}

  @override
  void render(Canvas canvas){
    super.render(canvas);
    final rect = Rect.fromLTWH(_x, _y, _size, _size);
    canvas.drawRect(rect,paint);
  }


}