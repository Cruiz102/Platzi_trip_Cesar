import 'package:flutter/material.dart';

class FriendTile extends StatelessWidget {
  final String title;
  final String photoUrl;
  FriendTile({this.title, this.photoUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 1.0, color: Colors.grey.shade300))),
        margin: EdgeInsets.only(top: 15, bottom: 10),
        child: ListTile(
          trailing: IconButton(
            icon: Icon(Icons.mail_outline_outlined),
            onPressed: () => {},
            iconSize: 40.0,
          ),
          leading: CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage(photoUrl),
          ),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Ocupado"),
        ));
  }
}
