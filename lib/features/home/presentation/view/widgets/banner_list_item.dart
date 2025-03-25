import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:bookly/core/constants/assets_const.dart';
import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

import '../../../../../core/utils/widgets/custom_book_image.dart';

class BannerListItem extends StatelessWidget {
  const BannerListItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CustomBookImage(
            imageUrl: book.volumeInfo!.imageLinks?.thumbnail ?? ''),
      ),
    );
  }
}
