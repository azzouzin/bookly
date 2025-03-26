import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repo/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book_model.dart';

part 'simmilair_books_state.dart';

class SimmilairBooksCubit extends Cubit<SimmilairBooksState> {
  HomeRepoImpl homeRepoImpl;

  SimmilairBooksCubit(this.homeRepoImpl) : super(SimmilairBooksInitial());
  Future<void> fetchSamilarBooks(String category) async {
    emit(SimmailairBooksLoading());
    var result = await homeRepoImpl.fetchSimmilairBooks(category);
    result.fold((failure) {
      emit(SimmailairBooksFailure(failure.message));
    }, (books) {
      emit(SimmailairBooksSuccess(books));
    });
  }
}
