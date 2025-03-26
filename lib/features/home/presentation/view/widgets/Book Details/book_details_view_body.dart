import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:flutter/material.dart';
import '../books_actions.dart';
import 'book_details_section.dart';
import 'recommanded_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BookDetailsSection(
                
                  ),
                  BookActions(),
                ],
              ),
            ),
            RecommendedBookSection(),
          ],
        ),
      ),
    );
  }
}
