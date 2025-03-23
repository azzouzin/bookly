import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
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
          "4.5",
          style: TextThemes.TextStyle18,
        ),
        Gap(5),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(1234)',
            style: TextThemes.TextStyle16,
          ),
        ),
      ],
    );
  }
}
