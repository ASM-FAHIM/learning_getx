import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TapController extends GetxController {
  int _x = 0;
  int _y = 0;
  int get x => _x;
  int get y => _y;

  final RxInt _res = 0.obs;
  int get result => _res.value;

  final RxInt _z = 0.obs;
  int get z => _z.value;

  void increaseX() {
    _x++;
    update();
    print(_x);
  }

  void decreaseX() {
    _x--;
    update();
    print(_x);
  }

  void increaseY() {
    _y++;
    update();
    print(_x);
  }

  void decreaseY() {
    _y--;
    update();
    print(_x);
  }

  void increaseZ() {
    _z.value++;
    debugPrint(_z.toString());
  }

  void decreaseZ() {
    _z.value--;
    debugPrint(_z.toString());
  }

  void totalValue() {
    _res.value = x + _z.value;
    debugPrint(_res.toString());
  }
}
