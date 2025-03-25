import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:bookly/core/constants/assets_const.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BannerListItem extends StatelessWidget {
  const BannerListItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => Icon(Icons.error),
          placeholder: (context, url) => BlurryContainer(
            height: MediaQuery.of(context).size.height * 0.18,
            width: MediaQuery.of(context).size.width,
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
