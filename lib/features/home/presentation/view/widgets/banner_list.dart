import 'package:bookly/features/home/presentation/view_models/banner_books_cubit/banner_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/widgets/custom_loading_widget.dart';
import '../../../../../core/utils/widgets/error_widget.dart';
import 'banner_list_item.dart';

class BannerList extends StatelessWidget {
  const BannerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerBooksCubit, BannerBooksState>(
      builder: (context, state) {
        if (state is BannerBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: const BannerListItem(),
                );
              },
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
            ),
          );
        } else {
          if (state is BannerBooksFailure) {
            return CustomErrorWidget(errorMessage: state.errMessage);
          } else {
            return CustomLoadingindicator();
          }
        }
      },
    );
  }
}
