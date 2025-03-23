import 'package:bookly/core/constants/assets_const.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../banner_list_item.dart';
import '../book_rating_app.dart';
import '../custom_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.18,
              ),
              child: BannerListItem(),
            ),
            Text(
              "The Green Book",
              style: TextThemes.TextStyle18.copyWith(
                fontFamily: AssetsData.fontGT,
                fontSize: 30,
                fontWeight: FontWeight.normal,
              ),
            ),
            //Gap(6),
            Text(
              "The Green Book",
              style: TextThemes.TextStyle16.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
            Gap(16),
            BookRating(),
          ],
        ),
      ),
    );
  }
}
