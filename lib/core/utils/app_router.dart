import 'package:bookly/features/home/presentation/view/widgets/Book%20Details/book_details_view.dart';
import 'package:bookly/features/home/presentation/view_models/banner_books_cubit/banner_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_models/new_books_cubit/cubit/new_books_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly/features/splash/presentation/view/splash_view.dart';
import 'package:bookly/features/home/presentation/view/home_view.dart';

import '../../features/home/data/repo/home_repo_impl.dart';
import '../../features/search/presentation/view/search_view.dart';
import '../constants/theme_const.dart';
import 'api_service.dart';
import 'custom_page_transitions.dart';
import 'service_locator.dart';

abstract class AppRouter {
  // Create a ShellRoute that wraps all routes with the necessary BlocProviders
  static final router = GoRouter(
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => BannerBooksCubit(
                  getIt.get<HomeRepoImpl>(),
                )..fetchBannerBooks(),
              ),
              BlocProvider(
                create: (context) => NewBooksCubit(
                  getIt.get<HomeRepoImpl>(),
                ),
              ),
            ],
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const SplashView(),
          ),
          GoRoute(
            path: kHomeView,
            pageBuilder: (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const HomeView(),
              transitionsBuilder: CustomPageTransitions.slideTransition,
            ),
          ),
          GoRoute(
            path: kBookDetails,
            pageBuilder: (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const BookDetailsView(),
              transitionsBuilder: CustomPageTransitions.slideTransition,
            ),
          ),
          GoRoute(
            path: '/search',
            pageBuilder: (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const SearchView(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity:
                      CurveTween(curve: Curves.easeInOut).animate(animation),
                  child: child,
                );
              },
            ),
          ),
        ],
      ),
    ],
  );
}
