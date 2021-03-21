import 'package:flutter/material.dart';

class StarRow extends StatelessWidget {
  final int rating;
  final stars = Container(
    child: Icon(
      Icons.star,
      color: Colors.amber,
      size: 18.0,
    ),
  );
  final notStar = Container(
      child: Icon(
    Icons.star_border,
    color: Colors.amber,
    size: 18.0,
  ));

  StarRow({this.rating = 3});
  List<Widget> rateStars() {
    List<Widget> list = [];
    for (int e = 0; e < rating; e++) {
      if (e < 5) list.add(stars);
    }
    while (list.length < 5) {
      list.add(notStar);
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: rateStars(),
      ),
    );
  }
}
