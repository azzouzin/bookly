import 'package:bookly/core/constants/theme_const.dart';
import 'package:bookly/core/utils/widgets/custom_book_image.dart';
import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/assets_const.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating_app.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).push(kBookDetails, extra: bookModel),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CustomBookImage(
                  imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? "",
                ),
              ),
            ),
            Gap(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookModel.volumeInfo?.title ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                    style: TextThemes.TextStyle18.copyWith(
                      fontFamily: AssetsData.fontGT,
                    ),
                  ),
                  Text(
                    bookModel.volumeInfo?.authors?[0] ?? "",
                    style: TextThemes.TextStyle16,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "Free",
                        style: TextThemes.TextStyle18.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      BookRating(
                        rating: bookModel.volumeInfo!.pageCount!.toString(),
                        count: bookModel.volumeInfo!.pageCount!.toString(),
                      ),
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
