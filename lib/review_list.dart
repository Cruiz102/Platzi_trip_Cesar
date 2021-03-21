import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Review(
          name: "Annian",
          reviewNumbers: 1234,
          rating: 4,
          photosNumbers: 6,
          comment: "no me puedo creer que este a mitad de precio",
        ),
        Review(
          comment: "Una Ganga!!!",
          rating: 2,
        ),
        Review(
          name: "adolfo",
          rating: 3,
          comment:
              "Se puede mejorar el sfffffffffffffffffffffffdddddddddddddsjdhgk,dbfjhsdvfkjhsdvfkjhdvfkjasdfkjfhavfgkhdvccmjbdsj fddddddddd",
        ),
        Review(
          name: "Glinda",
          rating: 1,
          comment:
              "ayy ya no chaven que dificil es yener trillisos miren mijos los acabo de seguir por instagram y vengan a casa que les hice arroz con abichuela",
        )
      ],
    );
  }
}
