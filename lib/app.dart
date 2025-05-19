import 'package:flutter/material.dart';
import 'package:riverpod_mvvm/app_theme.dart';
import 'package:riverpod_mvvm/core/router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();
    final AppTheme appTheme = AppTheme();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: '연습용',
      routerConfig: appRouter.config(),
      theme: appTheme.lightTheme,
    );
  }
}
