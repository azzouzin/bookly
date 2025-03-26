import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/utils/widgets/custom_button.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  bool checkAvailability() {
    return bookModel.volumeInfo?.allowAnonLogging == true;
  }

  Future<void> _launchUrl() async {
    if (bookModel.volumeInfo?.previewLink != null) {
      final Uri url = Uri.parse(bookModel.volumeInfo!.previewLink!);
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButton(
            text: "19.99 \$",
            onPressed: _launchUrl,
          ),
        ),
        Expanded(
          child: CustomButton(
            color: const Color.fromARGB(255, 233, 136, 106),
            text: "Free Preview",
            textColor: Colors.white,
            onPressed: _launchUrl,
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
