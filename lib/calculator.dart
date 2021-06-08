import 'package:flutter/material.dart';
import 'dart:math';
class CalculatorBrain{
  int height;
  int weight;
  double _bmi;
  int _nbmi;
  String _dec;
  Color _resCol;
  CalculatorBrain({this.height, this.weight});

  String CalculateBMI(){
    _bmi = weight / pow(height/100, 2);
    _dec = _bmi.toString().substring(2);
    _nbmi = _bmi.round();
    return (_nbmi.toString());
  }
  String CalculateBMIdec(){
    _bmi = weight / pow(height/100, 2);
    _dec = _bmi.toString().substring(2,5);
    _nbmi = _bmi.round();
    return (_dec.toString());
  }
  String getResult(){
    if (_bmi>=25){
      return "OVERWEIGHT";
    } else if (_bmi>18.5){
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }
  Color getColor(){
    if (_bmi>=25){
      _resCol = Color(0xFFf55c47);
      return _resCol;
    } else if (_bmi>18.5){
      _resCol = Color(0xFF29bb89);
      return _resCol;
    } else {
      _resCol = Color(0xFFf55c47);
      return _resCol;
    }
  }
}
