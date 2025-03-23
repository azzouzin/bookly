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
import 'book_details_section.dart';
import 'recommanded_section.dart';

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
                  BookDetailsSection(),
                  BookActions(),
                ],
              ),
            ),
            RecommendedBookSection(),
          ],
        ),
      ),
    );
  }
}
