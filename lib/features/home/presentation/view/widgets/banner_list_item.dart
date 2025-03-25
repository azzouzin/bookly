import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:bookly/core/constants/assets_const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BannerListItem extends StatelessWidget {
  const BannerListItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              imageUrl,
            ),
          ),
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey,
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const BlurryContainer(
              width: 50,
              height: 50,
              borderRadius: BorderRadius.all(Radius.circular(200)),
              child: Icon(
                FontAwesomeIcons.play,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
