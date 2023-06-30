import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Palet {
  static const EdgeInsets pagePadding = EdgeInsets.all(20);
  static const Color gradiantColor = Color.fromRGBO(254, 121, 91, 0.9);
  static const EdgeInsets symetric =
      EdgeInsets.symmetric(horizontal: 20, vertical: 10);
  static const EdgeInsets listPadding =
      EdgeInsets.symmetric(horizontal: 10, vertical: 5);
  static const EdgeInsets heightPadding = EdgeInsets.symmetric(vertical: 10);
  static const EdgeInsets MediumHeightPadding = EdgeInsets.symmetric(vertical: 5);
  static const SizedBox defaultWeight = SizedBox(
    width: 15,
  );
  static const SizedBox defaultHeight = SizedBox(
    height: 15,
  );
  static final BoxShadow shadowType = BoxShadow(
      offset: Offset(0, 20),
      color: Colors.black.withOpacity(1),
      blurRadius: 30,
      spreadRadius: 15);
  static final LinearGradient gradient=LinearGradient(colors: [
    Colors.black.withOpacity(0),
    Colors.black.withOpacity(0),
    Colors.black.withOpacity(1),
  ], begin: Alignment.center, end: Alignment.bottomCenter);
}
