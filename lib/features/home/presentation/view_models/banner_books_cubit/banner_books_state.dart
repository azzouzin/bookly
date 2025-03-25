part of 'banner_books_cubit.dart';

sealed class BannerBooksState extends Equatable {
  const BannerBooksState();

  @override
  List<Object> get props => [];
}

final class BannerBooksInitial extends BannerBooksState {}

final class BannerBooksLoading extends BannerBooksState {}

final class BannerBooksSuccess extends BannerBooksState {
  final List<BookModel> books;
  const BannerBooksSuccess(this.books);
}

final class BannerBooksFailure extends BannerBooksState {
  final String errMessage;
  const BannerBooksFailure(this.errMessage);
}
