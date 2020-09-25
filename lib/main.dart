import 'package:flutter/material.dart';
import 'package:mortal_kombat/view/home_page.dart';

void main() {
  runApp(MortalKombat());
}

class MortalKombat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mortal Kombat',
      home: HomePage(),
    );
  }
}
