import 'package:flutter/material.dart';

class Character {
  final String name;
  final String about;
  final String image;
  final List<Color> gradientColor;
  final Color color;
  final String mp3;

  Character({
    @required this.name,
    @required this.about,
    @required this.image,
    @required this.color,
    @required this.gradientColor,
    @required this.mp3,
  });
}
