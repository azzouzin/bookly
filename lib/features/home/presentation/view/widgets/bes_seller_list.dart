import 'package:bookly/core/utils/widgets/custom_loading_widget.dart';
import 'package:bookly/core/utils/widgets/error_widget.dart';
import 'package:bookly/features/home/presentation/view_models/new_books_cubit/cubit/new_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'best_seller_item.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewBooksCubit, NewBooksState>(
      builder: (context, state) {
        if (state is NewBooksSuccess) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return BestSellerItem(bookModel: state.books[index]);
            },
            separatorBuilder: (context, index) => Gap(10),
          );
        } else {
          if (state is NewBooksFailure) {
            return CustomErrorWidget(
              errorMessage: state.errMessage,
            );
          }
          return CustomLoadingindicator();
        }
      },
    );
  }
}
