import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/constants/assets_const.dart';
import '../../../../../../core/utils/styles.dart';
import '../banner_list_item.dart';
import '../book_rating_app.dart';
import '../custom_app_bar.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

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
            imageUrl:
                'https://play-lh.googleusercontent.com/DCHwenH7ooYXZf2wGZVb0dkt6wMaHgG_qR69hGabMywWz7fciPqyu-O8hLL4ZM0D1Z3BgccPIB7TgFvvh8E=w240-h480-rw',
          ),
        ),
        Gap(37),
        Text(
          "The Green Book",
          style: TextThemes.TextStyle18.copyWith(
            fontFamily: AssetsData.fontGT,
            fontSize: 30,
            fontWeight: FontWeight.normal,
          ),
        ),
        Text(
          "The Green Book",
          style: TextThemes.TextStyle16.copyWith(
            fontStyle: FontStyle.italic,
          ),
        ),
        Gap(16),
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
        Gap(37),
      ],
    );
  }
}
