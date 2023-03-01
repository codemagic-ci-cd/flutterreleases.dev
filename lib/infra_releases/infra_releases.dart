import 'package:freezed_annotation/freezed_annotation.dart';

import 'current_release.dart';
import 'release.dart';

part 'infra_releases.freezed.dart';
part 'infra_releases.g.dart';

@freezed
class InfraReleases with _$InfraReleases {
  factory InfraReleases({
    @JsonKey(name: 'base_url') String? baseUrl,
    @JsonKey(name: 'current_release') CurrentRelease? currentRelease,
    List<Release>? releases,
  }) = _InfraReleases;

  factory InfraReleases.fromJson(Map<String, dynamic> json) =>
      _$InfraReleasesFromJson(json);
}
