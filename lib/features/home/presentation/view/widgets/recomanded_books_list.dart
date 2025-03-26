import 'package:bookly/core/utils/widgets/custom_loading_widget.dart';
import 'package:bookly/features/home/presentation/view_models/new_books_cubit/cubit/new_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_models/simmilair_books/simmilair_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/widgets/error_widget.dart';
import 'banner_list_item.dart';

class RecomandedBooksList extends StatelessWidget {
  const RecomandedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimmilairBooksCubit, SimmilairBooksState>(
      builder: (context, state) {
        if (state is SimmailairBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: BannerListItem(book: state.books[index]),
                );
              },
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
            ),
          );
        } else if (state is SimmailairBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else {
          return CustomLoadingindicator();
        }
      },
    );
  }
}
