import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_mvvm/data/models/activity.dart';
import 'package:riverpod_mvvm/presentation/providers/activity_provider.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Activity> activity = ref.watch(activityProvider);

    return Scaffold(
      body: SafeArea(
        child: Center(
          /// Since network-requests are asynchronous and can fail, we need to
          /// handle both error and loading states. We can use pattern matching for this.
          /// We could alternatively use `if (activity.isLoading) { ... } else if (...)`
          child: switch (activity) {
            AsyncData(:final value) => Text('Activity: ${value.activity}'),
            AsyncError() => const Text('Oops, something unexpected happened'),
            _ => const CircularProgressIndicator(),
          },
        ),
      ),
    );
  }
}
