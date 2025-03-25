part of 'new_books_cubit.dart';

sealed class NewBooksState extends Equatable {
  const NewBooksState();

  @override
  List<Object> get props => [];
}

final class NewBooksInitial extends NewBooksState {}

final class NewBooksLoading extends NewBooksState {}

final class NewBooksSuccess extends NewBooksState {
  final List<BookModel> books;
  const NewBooksSuccess(this.books);
}

final class NewBooksFailure extends NewBooksState {
  final String errMessage;
  const NewBooksFailure(this.errMessage);
}
