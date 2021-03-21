import 'package:flutter/material.dart';
import 'package:platzi_trip/card_list.dart';
import 'package:platzi_trip/gradient_back.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        child: Stack(
          children: [GradientBox(), Positioned(top: 120, child: CardList())],
        ));
  }
}
