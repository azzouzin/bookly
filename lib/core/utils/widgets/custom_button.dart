import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(16),
      bottomLeft: Radius.circular(16),
    ),
    required this.text,
    this.color = Colors.white,
    this.textColor = Colors.black,
  });
  final BorderRadiusGeometry borderRadius;
  final Color color;
  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(0),
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        minimumSize: Size(MediaQuery.of(context).size.width * 0.5, 50),
        // siz
      ),
      child: Text(
        text,
        style: TextThemes.TextStyle16.copyWith(
          color: textColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
