import 'package:flutter/material.dart';
import 'package:platzi_trip/curve_top_bar.dart';
import 'package:platzi_trip/friend_tile.dart';

class FriendsPage extends StatelessWidget {
  List<Widget> putTilesOnPage() {
    List<Widget> list = [];
    List names = [
      "Pedro",
      "Juan",
      "Pepe",
      "Maria",
      "Victor",
      "Jose",
      "Patricia",
      " Arlo"
    ];
    print(names.length);
    List listphotos = [
      "assets/stock-1.jpg",
      "assets/stock-2.jpg",
      "assets/stock-3.webp",
      "assets/stock-4.jpg"
    ];
    int photoIterator = 0;
    for (var i = 0; i < names.length; i++) {
      list.add(FriendTile(
        title: names[i],
        photoUrl: listphotos[photoIterator],
      ));
      photoIterator++;
      if (photoIterator > 3) {
        photoIterator = 0;
      }
      ;
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
          margin: EdgeInsets.only(
            top: 60,
          ),
          child: ListView(
            children: putTilesOnPage(),
          )),
      CurveTopBar()
    ]));
  }
}
