import 'package:flutter/material.dart';
import 'package:platzi_trip/card_container.dart';

class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 220,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CardContainer(
              url: "assets/Cascada.jpeg",
            ),
            CardContainer(
              url: "assets/Forest.jpeg",
            ),
            CardContainer(url: "assets/Disney.jpeg"),
            CardContainer(
              url: "assets/Temple.jpeg",
            ),
            CardContainer(url: "assets/Tropical.jpeg"),
            CardContainer(url: "assets/Hollywood.jpeg")
          ],
        ));
  }
}
