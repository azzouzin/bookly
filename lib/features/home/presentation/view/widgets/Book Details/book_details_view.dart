import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:flutter/material.dart';

import 'book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key, required this.book}) : super(key: key);
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(
          bookModel: book,
        ),
      ),
    );
  }
}
