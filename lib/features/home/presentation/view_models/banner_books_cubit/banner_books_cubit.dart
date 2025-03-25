import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book_model.dart';

part 'banner_books_state.dart';

class BannerBooksCubit extends Cubit<BannerBooksState> {
  BannerBooksCubit() : super(BannerBooksInitial());
}
