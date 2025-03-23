import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utils/styles.dart';
import '../recomanded_books_list.dart';

class RecommendedBookSection extends StatelessWidget {
  const RecommendedBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(16),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            "You may also like",
            style: TextThemes.TextStyle14.copyWith(
                color: Colors.white, fontWeight: FontWeight.w800),
          ),
        ),
        Gap(8),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: RecomandedBooksList(),
        ),
      ],
    );
  }
}
