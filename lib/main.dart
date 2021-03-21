import 'package:flutter/material.dart';
import 'package:platzi_trip/friend_page.dart';
import 'package:platzi_trip/top_bar.dart';
import 'description_place.dart';
import 'review_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FriendsPage());
  }
}

class MyHomePage extends StatelessWidget {
  final acon =
      BottomNavigationBarItem(icon: Icon(Icons.free_breakfast), label: "App");
  final icon = BottomNavigationBarItem(
    icon: IconButton(
      icon: Icon(Icons.settings),
      onPressed: () => {},
    ),
    label: "settings",
  );
  final dummy =
      "La historia de Puerto Rico comenzó con el asentamiento del pueblo indígena ortoiroide en el archipiélago de Puerto Rico entre los años 3000 y 2000 a. C. ... En el momento de la llegada de Cristóbal Colón al Nuevo Mundo en 1492, la cultura indígena dominante era la de los taínos";
//////////
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [icon, acon, acon],
      ),
      body: Stack(children: [
        ListView(children: [
          PlaceName(
            name: "Puerto Rico",
            description: dummy,
            stars: 3,
          ),
          ReviewList(),
        ]),
        TopBar(),
      ]),
    );
    return scaffold;
  }
}
