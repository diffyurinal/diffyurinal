import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//basic 2d movement
class Player {


  final _paint = Paint()..color = Colors.lightBlue;

  double _x = 0.0;
  double _y = 0.0;
  double _size = 100.0;

  initialize(){
    _x = 0.0;
    _y = 0.0;
  }

  setXPos(double x){
    _x = x;
  }
  getXPos(){
    return _x;
  }

  setYPos(double y){
    _y = y;
  }

  getYPos(){
    return _y;
  }

  setSize(double s){
    _size = s;
  }

  getSize(){
    return _size;
  }

  getPaint(){
    return _paint;
  }
}