import 'package:bookly/core/constants/theme_const.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/assets_const.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating_app.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).push(kBookDetails),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                  ),
                ),
              ),
            ),
            Gap(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Harry Potter and the Philosopher's Stone ",
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                    style: TextThemes.TextStyle18.copyWith(
                      fontFamily: AssetsData.fontGT,
                    ),
                  ),
                  Text(
                    "J.K Rowling",
                    style: TextThemes.TextStyle16,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "19.99 \$",
                        style: TextThemes.TextStyle18.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      BookRating(),
                    ],
                  ),
                  Gap(5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
