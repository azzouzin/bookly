import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import '../../../data/model/book_model.dart';

part 'banner_books_state.dart';

class BannerBooksCubit extends Cubit<BannerBooksState> {
  BannerBooksCubit(this.homeRepo) : super(BannerBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchBannerBooks() async {
    emit(BannerBooksLoading());
    var result = await homeRepo.fetchBannerBooks();
    result.fold((failure) {
      emit(BannerBooksFailure(failure.message));
    }, (books) {
      emit(BannerBooksSuccess(books));
    });
  }
}
