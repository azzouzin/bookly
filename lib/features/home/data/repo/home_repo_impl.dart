import 'package:bookly/core/errors/failliers.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'home_repo.dart';
// import 'package:bookly/core/errors/failures.dart';
// import 'package:bookly/features/home/data/datasources/home_local_data_source.dart';
// import 'package:bookly/features/home/data/datasources/home_remote_data_source.dart';
// import 'package:bookly/features/home/domain/entities/book_entity.dart';
// import 'package:bookly/features/home/domain/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  // final HomeRemoteDataSource homeRemoteDataSource;
  // final HomeLocalDataSource homeLocalDataSource;

  ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Faillier, List<BookModel>>> fetchBannerBooks() {
    // TODO: implement fetchBannerBooks

    throw UnimplementedError();
  }

  @override
  Future<Either<Faillier, List<BookModel>>> fetchBestSellerBooks() async {
    // TODO: implement fetchBestSellerBooks
    try {
      var data =
          await apiService.get(endPoint: 'volumes?q=flowers&orderBy=newest');
      List<BookModel> books = [];
      books = BookModel.fromList(data.data['items']);
      return Right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFaillier.fromDioError(e));
      } else {
        return Left(ServerFaillier(e.toString()));
      }
    }
  }
}
