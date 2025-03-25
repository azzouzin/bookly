import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/constants/theme_const.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: AppTheme.darkTheme,
    );
  }
}
