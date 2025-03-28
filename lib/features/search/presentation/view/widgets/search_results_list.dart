import 'package:bookly/features/home/presentation/view/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

import '../../../../home/data/model/book_model.dart';

class SearchResultsList extends StatelessWidget {
  const SearchResultsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10, // Replace with actual search results count
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: BestSellerItem(
            bookModel: BookModel(),
          ),
        );
      },
    );
  }
}
