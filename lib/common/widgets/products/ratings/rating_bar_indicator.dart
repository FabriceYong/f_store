import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FRatingBarIndicator extends StatelessWidget {
  const FRatingBarIndicator(
      {super.key, this.itemSize = 30.0, required this.rating});

  final double itemSize;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemCount: 5,
      glow: true,
      glowColor: Colors.amber,
      initialRating: rating,
      allowHalfRating: true,
      itemSize: itemSize,
      onRatingUpdate: (rating) {
        print(rating);
      },
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return const Icon(
              Icons.sentiment_very_dissatisfied,
              color: Colors.red,
            );
          case 1:
            return const Icon(
              Icons.sentiment_dissatisfied,
              color: Colors.redAccent,
            );
          case 2:
            return const Icon(
              Icons.sentiment_neutral,
              color: Colors.amber,
            );
          case 3:
            return const Icon(
              Icons.sentiment_satisfied,
              color: Colors.lightGreen,
            );
          case 4:
            return const Icon(
              Icons.sentiment_very_satisfied,
              color: Colors.green,
            );
          default:
            return const Icon(Icons.sentiment_neutral);
        }
      },
    );
  }
}
