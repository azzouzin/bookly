import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/assets_const.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            height: 24,
          ),
          // Add this to your CustomAppBar widget
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
            ),
            onPressed: () {
              print("Search button pressed");
              GoRouter.of(context).push('/search');
            },
          ),
        ],
      ),
    );
  }
}
