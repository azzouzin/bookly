import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final String rating;
  final String count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Gap(5),
        Text(
          rating.toString(),
          style: TextThemes.TextStyle18,
        ),
        Gap(5),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(${count.toString()})',
            style: TextThemes.TextStyle16,
          ),
        ),
      ],
    );
  }
}
