import 'package:f_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:flutter/material.dart';

class FOverallProductRating extends StatelessWidget {
  const FOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              FRatingProgressIndicator(text: '5', value: 1.0),
              FRatingProgressIndicator(text: '4', value: 0.8),
              FRatingProgressIndicator(text: '3', value: 0.6),
              FRatingProgressIndicator(text: '2', value: 0.4),
              FRatingProgressIndicator(text: '1', value: 0.2),
            ],
          ),
        )
      ],
    );
  }
}
