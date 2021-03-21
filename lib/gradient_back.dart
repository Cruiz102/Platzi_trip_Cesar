import 'package:flutter/material.dart';

class GradientBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 290,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red[400], Colors.blue],
            tileMode: TileMode.clamp,
            begin: FractionalOffset(0.5, 0.2),
            end: FractionalOffset(1, 0.5),
          ),
        ),
      ),
      Positioned(
          top: 50,
          left: 15,
          child: Container(
            alignment: Alignment.topCenter,
            child: Text(
              "Bienvenido",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ))
    ]);
  }
}
