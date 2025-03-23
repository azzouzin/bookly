import 'package:flutter/material.dart';
import 'package:bookly/core/constants/assets_const.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_rating_app.dart';
import 'package:gap/gap.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to book details
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                AssetsData.logo,
                height: 100,
                width: 70,
                fit: BoxFit.cover,
              ),
            ),
            const Gap(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Title',
                    style: TextThemes.TextStyle18.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(4),
                  Text(
                    'Author Name',
                    style: TextThemes.TextStyle18.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  const Gap(8),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: TextThemes.TextStyle18.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                       BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
