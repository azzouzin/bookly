import 'package:bookly/core/constants/assets_const.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utils/widgets/custom_button.dart';
import '../banner_list_item.dart';
import '../book_rating_app.dart';
import '../books_actions.dart';
import '../custom_app_bar.dart';
import '../recomanded_books_list.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BookDetailsAppBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.2,
                    ),
                    child: BannerListItem(),
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
                  BookActions(),
                  Gap(16),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You may also like",
                      style: TextThemes.TextStyle14.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Gap(8),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: RecomandedBooksList(),
            ),
          ],
        ),
      ),
    );
  }
}
