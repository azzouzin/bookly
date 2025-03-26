import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingindicator extends StatelessWidget {
  const CustomLoadingindicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer(
        gradient: LinearGradient(
          colors: [
            Colors.grey.shade300,
            Colors.grey.shade400,
            Colors.grey.shade300,
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
    // return Center(child: CircularProgressIndicator());
  }
}
