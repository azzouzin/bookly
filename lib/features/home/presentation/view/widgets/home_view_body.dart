import 'package:bookly/features/home/presentation/view/widgets/home_view_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/styles.dart';
import 'banner_list.dart';
import 'banner_list_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        BannerList(),
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              const Gap(40), // Adds an empty space of 20 pixels.
              Text(
                "Best Seller",
                style: TextThemes.titleMeduiem,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
