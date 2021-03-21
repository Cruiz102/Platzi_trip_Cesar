import 'package:flutter/material.dart';

class CurveTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MiClip(),
      child: Container(
          height: 140,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(),
          color: Colors.red,
          alignment: Alignment.center,
          child: Row(children: [
            IconButton(
              icon: Icon(Icons.list),
              onPressed: () => {},
              color: Colors.white,
            ),
            Text(
              "              Friends",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ])),
    );
  }
}

class MiClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //

    Path p = new Path();
    p.lineTo(0, size.height - 30);
    p.quadraticBezierTo(size.width - 380, size.height - 40, size.width * 0.25,
        size.height - 30);
    p.quadraticBezierTo(
        size.width / 2, size.height, size.width * 0.75, size.height - 30);
    p.quadraticBezierTo(
        size.width - 60, size.height - 40, size.width, size.height - 30);
    p.lineTo(size.width, 0);

    return p;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
