import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_mvvm/data/models/activity.dart';
import 'package:riverpod_mvvm/presentation/providers/activity_provider.dart';

/// The homepage of our application
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        // Read the activityProvider. This will start the network request
        // if it wasn't already started.
        // By using ref.watch, this widget will rebuild whenever
        // the activityProvider updates. This can happen when:
        // - The response goes from "loading" to "data/error"
        // - The request was refreshed
        // - The result was modified locally (such as when performing side-effects)
        // ...
        final AsyncValue<Activity> activity = ref.watch(activityProvider);

        return Scaffold(
          body: SafeArea(
            child: Center(
              /// Since network-requests are asynchronous and can fail, we need to
              /// handle both error and loading states. We can use pattern matching for this.
              /// We could alternatively use `if (activity.isLoading) { ... } else if (...)`
              child: switch (activity) {
                AsyncData(:final value) => Text('Activity: ${value.activity}'),
                AsyncError() => const Text(
                  'Oops, something unexpected happened',
                ),
                _ => const CircularProgressIndicator(),
              },
            ),
          ),
        );
      },
    );
  }
}
