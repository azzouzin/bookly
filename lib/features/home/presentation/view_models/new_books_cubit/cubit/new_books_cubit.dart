import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/model/book_model.dart';
import '../../../../data/repo/home_repo.dart';

part 'new_books_state.dart';

class NewBooksCubit extends Cubit<NewBooksState> {
  NewBooksCubit(this.homeRepo) : super(NewBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchBannerBooks() async {
    emit(NewBooksLoading());
    var result = await homeRepo.fetchNewSellerBooks();
    result.fold((failure) {
      emit(NewBooksFailure(failure.message));
    }, (books) {
      emit(NewBooksSuccess(books));
    });
  }
}
