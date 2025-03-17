import 'package:flutter/material.dart';

class BannerListItem extends StatelessWidget {
  const BannerListItem({super.key});
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.3,
      width: screenWidth * 0.4,
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
    );
  }
}
