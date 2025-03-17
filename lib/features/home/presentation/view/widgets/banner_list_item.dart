import 'package:flutter/material.dart';

class BannerListItem extends StatelessWidget {
  const BannerListItem({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/images/Green_Book.png',
            ),
          ),
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey,
        ),
        child: const Center(
          child: Text(
            "Banner",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
