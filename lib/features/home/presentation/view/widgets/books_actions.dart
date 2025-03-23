

import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/custom_button.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButton(
            text: "19.99 \$",
          ),
        ),
        Expanded(
          child: CustomButton(
            color: const Color.fromARGB(255, 233, 136, 106),
            text: "Free Preview",
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
