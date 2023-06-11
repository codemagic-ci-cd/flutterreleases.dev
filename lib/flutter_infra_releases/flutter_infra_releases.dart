import 'package:freezed_annotation/freezed_annotation.dart';

import 'current_release.dart';
import 'release.dart';

part 'flutter_infra_releases.freezed.dart';
part 'flutter_infra_releases.g.dart';

@freezed
class FlutterInfraReleases with _$FlutterInfraReleases {
  factory FlutterInfraReleases({
    @JsonKey(name: 'base_url') String? baseUrl,
    @JsonKey(name: 'current_release') CurrentRelease? currentRelease,
    List<Release>? releases,
  }) = _FlutterInfraReleases;

  factory FlutterInfraReleases.fromJson(Map<String, dynamic> json) =>
      _$FlutterInfraReleasesFromJson(json);
}
