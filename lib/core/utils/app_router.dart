import 'package:bookly/features/home/presentation/view/widgets/Book%20Details/book_details_view.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly/features/splash/presentation/view/splash_view.dart';
import 'package:bookly/features/home/presentation/view/home_view.dart';

import '../../features/search/presentation/view/search_view.dart';
import '../constants/theme_const.dart';
import 'custom_page_transitions.dart';

abstract class AppRouter {
  static final router = GoRouter(
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
      // Add this import

      // Add this route to your GoRouter configuration
      GoRoute(
        path: '/search',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const SearchView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
              child: child,
            );
          },
        ),
      ),
    ],
  );
}
