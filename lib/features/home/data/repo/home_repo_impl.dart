import 'package:bookly/core/errors/failliers.dart';
import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:dartz/dartz.dart';

import 'home_repo.dart';
// import 'package:bookly/core/errors/failures.dart';
// import 'package:bookly/features/home/data/datasources/home_local_data_source.dart';
// import 'package:bookly/features/home/data/datasources/home_remote_data_source.dart';
// import 'package:bookly/features/home/domain/entities/book_entity.dart';
// import 'package:bookly/features/home/domain/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  // final HomeRemoteDataSource homeRemoteDataSource;
  // final HomeLocalDataSource homeLocalDataSource;

  @override
  Future<Either<Faillier, List<BookModel>>> fetchBannerBooks() {
    // TODO: implement fetchBannerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Faillier, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }
}
