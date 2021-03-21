import 'package:flutter/material.dart';

class StarColumn extends StatelessWidget {
  final number;
  final star = Icon(
    Icons.star,
    color: Colors.amber,
  );

  StarColumn({this.number});

  setStar(aa) {
    List<Widget> g = [];
    for (var i = 0; i < aa; i++) {
      g.add(star);
    }
    return Row(children: g);
  }

  @override
  Widget build(BuildContext context) {
    return setStar(number);
  }
}

class PlaceName extends StatelessWidget {
  final name;
  final String description;
  final int stars;
  PlaceName({this.name, this.description, @required this.stars});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
            ),
            Container(
              child: Row(children: [
                StarColumn(
                  number: stars,
                )
              ]),
              margin: EdgeInsets.only(left: 10.0),
            )
          ],
        ),
        Container(
          child: Text(
            description,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 13, color: Colors.grey.shade700),
          ),
          margin: EdgeInsets.only(top: 10.0),
        )
      ]),
      margin:
          EdgeInsets.only(top: 350.0, left: 20.0, bottom: 25.0, right: 20.0),
    );
  }
}
