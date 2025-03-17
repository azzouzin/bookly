import 'package:bookly/features/home/presentation/view/widgets/home_view_app_bar.dart';
import 'package:flutter/material.dart';

import 'banner_list_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        CustomAppBar(),
        //    BannerListItem(),
        BannerList(),
      ],
    ));
  }
}

class BannerList extends StatelessWidget {
  const BannerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: const BannerListItem(),
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
