import 'package:flutter/material.dart';
import 'package:riverpod_mvvm/core/router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();

    return MaterialApp.router(title: '연습용', routerConfig: appRouter.config());
  }
}
