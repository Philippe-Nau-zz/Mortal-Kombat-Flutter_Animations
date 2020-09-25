import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mortal_kombat/controller/character_controller.dart';
import 'package:mortal_kombat/widgets/animated_button.dart';

class ItemPage extends StatelessWidget {
  final String name;
  final String about;
  final String image;
  final List<Color> gradientColor;
  final Color color;
  final Function clickButton;

  ItemPage(
      {@required this.name,
      @required this.about,
      @required this.image,
      @required this.color,
      @required this.gradientColor,
      @required this.clickButton});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CharacterController>(
      init: CharacterController(),
      builder: (characterController) => Stack(
        children: [
          Transform(
            transform: Matrix4.skewX(-0.95),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: this.gradientColor,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: Card(
                      elevation: 30,
                      color: Colors.black,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 900,
                            height: 3,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: this.gradientColor,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(-1.4, -0.5),
                            child: Container(
                              child: FittedBox(
                                child: Text(
                                  this.name,
                                  style: TextStyle(
                                    fontSize: 150,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[900].withOpacity(0.3),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0, -0.7),
                  child: Image.asset('../assets/images/logo.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment(-0.7, -0.40),
                    child: Text(
                      'FIGHTER',
                      style: TextStyle(
                          letterSpacing: 10, fontSize: 22, color: this.color),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 800,
                    height: 800,
                    child: Image.asset(
                      this.image,
                      alignment: Alignment.bottomRight,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment(-0.7, -0.20),
                    child: FittedBox(
                      child: Text(
                        this.name,
                        style: TextStyle(
                          fontSize: 120,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.black54,
                              blurRadius: 10,
                            ),
                            Shadow(
                              color: Colors.white,
                              blurRadius: 2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment(-0.58, 0.97),
                    child: Container(
                      width: 500,
                      height: 300,
                      child: Text(
                        this.about,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.67, 0.6),
                  child: Container(
                    width: 350,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AnimatedButton(
                          clickButton: this.clickButton,
                          colors: this.color,
                          gradientColor: this.gradientColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
