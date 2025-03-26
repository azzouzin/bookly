import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingindicator extends StatelessWidget {
  const CustomLoadingindicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // return Center(child: CircularProgressIndicator());

    return Center(
      child: Shimmer(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.grey.shade400,
            Colors.black,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(),
        ),
      ),
    );
  }
}
