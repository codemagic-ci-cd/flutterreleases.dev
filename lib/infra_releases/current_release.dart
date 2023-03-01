import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_release.freezed.dart';
part 'current_release.g.dart';

@freezed
class CurrentRelease with _$CurrentRelease {
  factory CurrentRelease({
    String? beta,
    String? dev,
    String? stable,
  }) = _CurrentRelease;

  factory CurrentRelease.fromJson(Map<String, dynamic> json) =>
      _$CurrentReleaseFromJson(json);
}
