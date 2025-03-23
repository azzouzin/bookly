import 'package:bookly/features/home/presentation/view/widgets/Book%20Details/book_details_view.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly/features/splash/presentation/view/splash_view.dart';
import 'package:bookly/features/home/presentation/view/home_view.dart';

import 'custom_page_transitions.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/home',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const HomeView(),
          transitionsBuilder: CustomPageTransitions.slideTransition,
        ),
      ),
      GoRoute(
        path: '/book_details',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const BookDetailsView(),
          transitionsBuilder: CustomPageTransitions.slideTransition,
        ),
      ),
    ],
  );
}
