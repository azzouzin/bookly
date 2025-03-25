import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repo/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerLazySingleton<HomeRepo>(
      () => HomeRepoImpl(getIt.get<ApiService>()));
}
