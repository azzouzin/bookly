import 'package:bookly/core/errors/failliers.dart';
import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Faillier, List<BookModel>>> fetchNewSellerBooks();
  Future<Either<Faillier, List<BookModel>>> fetchBannerBooks();
}
