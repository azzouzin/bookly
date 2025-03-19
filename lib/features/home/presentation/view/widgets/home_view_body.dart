import 'package:bookly/features/home/presentation/view/widgets/home_view_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/constants/assets_const.dart';
import '../../../../../core/utils/styles.dart';
import 'banner_list.dart';
import 'best_seller_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                BannerList(),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(10),
                  Text(
                    "Best Seller",
                    style: TextThemes.TextStyle18,
                  ),
                  Gap(10),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: BestSellerList(),
          )
        ],
      ),
    );
  }
}

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 16),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 15,
      itemBuilder: (context, index) {
        return BestSellerItem();
      },
      separatorBuilder: (context, index) => Gap(10),
    );
  }
}
