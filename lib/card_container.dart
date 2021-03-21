import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final String url;
  CardContainer({this.url = "assets/Hollywood.jpeg"});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15),
        height: 200.0,
        width: 200.0,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(offset: Offset(3, 5), blurRadius: 8)],
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            shape: BoxShape.rectangle,
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(url))));
  }
}
