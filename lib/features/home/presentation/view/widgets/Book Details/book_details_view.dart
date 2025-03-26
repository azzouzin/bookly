import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:bookly/features/home/presentation/view_models/simmilair_books/simmilair_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_details_view_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({Key? key, required this.book}) : super(key: key);
  final BookModel book;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimmilairBooksCubit>(context)
        .fetchSamilarBooks(widget.book.volumeInfo!.categories!.first);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(),
      ),
    );
  }
}
