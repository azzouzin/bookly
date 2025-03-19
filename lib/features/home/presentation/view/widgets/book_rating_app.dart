import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Gap(5),
        Text(
          "4.5",
          style: TextThemes.TextStyle18,
        ),
        Gap(5),
        Text(
          '(1234)',
          style: TextThemes.TextStyle16,
        ),
      ],
    );
  }
}
