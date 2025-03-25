import 'package:flutter/material.dart';

import 'banner_list_item.dart';

class RecomandedBooksList extends StatelessWidget {
  const RecomandedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: const BannerListItem(
              imageUrl:
                  'https://play-lh.googleusercontent.com/DCHwenH7ooYXZf2wGZVb0dkt6wMaHgG_qR69hGabMywWz7fciPqyu-O8hLL4ZM0D1Z3BgccPIB7TgFvvh8E=w240-h480-rw',
            ),
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
