import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@freezed
sealed class Activity with _$Activity {
  factory Activity({
    required String key,
    required String activity,
    required String type,
    required int participants,
    required double price,
  }) = _Activity;

  /// Convert a JSON object into an [Activity] instance.
  /// This enables type-safe reading of the API response.
  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}
