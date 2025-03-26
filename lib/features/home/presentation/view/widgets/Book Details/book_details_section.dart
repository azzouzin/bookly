import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/constants/assets_const.dart';
import '../../../../../../core/utils/styles.dart';
import '../banner_list_item.dart';
import '../book_rating_app.dart';
import '../custom_app_bar.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.2,
          ),
          child: BannerListItem(
            book: bookModel,
          ),
        ),
        Gap(37),
        Text(
          bookModel.volumeInfo!.title!,
          style: TextThemes.TextStyle18.copyWith(
            fontFamily: AssetsData.fontGT,
            fontSize: 30,
            fontWeight: FontWeight.normal,
          ),
        ),
        Text(
          bookModel.volumeInfo!.authors!.first,
          style: TextThemes.TextStyle16.copyWith(
            fontStyle: FontStyle.italic,
          ),
        ),
        Gap(16),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: "(4.5)",
          rating: "4.5",
        ),
        Gap(37),
      ],
    );
  }
}
