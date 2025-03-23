import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:gap/gap.dart';
import 'widgets/search_bar_widget.dart';
import 'widgets/search_results_list.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(20),
          const SearchBarWidget(),
          const Gap(20),
          Text(
            'Search Results',
            style: TextThemes.TextStyle18.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const Gap(16),
          const Expanded(
            child: SearchResultsList(),
          ),
        ],
      ),
    );
  }
}
