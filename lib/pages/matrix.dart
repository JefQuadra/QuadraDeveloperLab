// import 'dart:math';

import 'package:flutter/material.dart';

class Matrix extends StatefulWidget {
  const Matrix({super.key});

  @override
  State<Matrix> createState() => _MatrixState();
}

class _MatrixState extends State<Matrix> {
  double x = 0;
  double y = 0;
  double z = 0;
  double factor = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double screenWidth = constraints.maxWidth;
      double screenHeight = constraints.maxHeight;

      return Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  "assets/images/3d.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Transform(
                transform: Matrix4(
                  1,
                  0,
                  0,
                  0,
                  0,
                  1,
                  0,
                  0,
                  0,
                  0,
                  1,
                  0,
                  (screenWidth * 0.32) * (factor),
                  0,
                  0,
                  1,
                )
                  ..setEntry(3, 2, 0.0018)
                  ..rotateY(factor)
                // ..rotateX(-0.1 * x)
                ,
                alignment: FractionalOffset.center,
                child: Container(
                  height: 450,
                  width: 250,
                  color: Colors.deepOrangeAccent,
                  child: Text("Widget"),
                ),
              ),
              Positioned(
                  left: 25,
                  bottom: 25,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        factor = factor + 0.1;
                      });
                      print(factor);
                    },
                    child: Container(
                      color: Colors.deepOrange,
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      child: Text(
                        "Press",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyanAccent),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      );
    });
  }
}
