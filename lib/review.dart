import 'package:flutter/material.dart';
import 'star_row.dart';

class Review extends StatelessWidget {
  final String imagePath;
  final String name;
  final int reviewNumbers;
  final int photosNumbers;
  final String comment;
  final int rating;
  Review(
      {this.imagePath = "assets/avatar-1.png",
      this.reviewNumbers = 0,
      this.name = "Pepe",
      this.photosNumbers = 0,
      this.comment = "hola",
      this.rating = 0});

  @override
  Widget build(BuildContext context) {
    //Constructor variables because is a stateless widget. Cant initialize a static variable in constructor.
    final iP = imagePath;
    final description = reviewNumbers.toString() +
        " reviews " +
        photosNumbers.toString() +
        " photos";
//Photo Widget
    final photo = Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0),
        width: 80.0,
        height: 80.0,
        child: CircleAvatar(backgroundImage: AssetImage(iP)));
    final userName = Container(
      child: Text(
        name,
        style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
      ),
    );
    final userInfo = Container(
        margin: EdgeInsets.only(bottom: 5),
        child: Row(children: [
          Text(
            description,
            style: TextStyle(fontSize: 12.0),
          ),
          StarRow(
            rating: rating,
          )
        ]));

    final userComment = Container(
      padding: EdgeInsets.only(right: 2.0),
      child: Text(
        comment,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600),
      ),
    );

    //All the variables ae inside this columns widget
    final userDetails = Container(
      margin: EdgeInsets.only(
        left: 20,
        top: 20.0,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [userName, userInfo, userComment]),
    );

    return Row(children: [photo, Expanded(child: userDetails)]);
  }
}
