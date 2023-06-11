import 'package:freezed_annotation/freezed_annotation.dart';

part 'release.freezed.dart';
part 'release.g.dart';

@freezed
class Release with _$Release {
  factory Release({
    String? hash,
    String? channel,
    String? version,
    @JsonKey(name: 'dart_sdk_version') String? dartSdkVersion,
    @JsonKey(name: 'dart_sdk_arch') String? dartSdkArch,
    @JsonKey(name: 'release_date') DateTime? releaseDate,
    String? archive,
    String? sha256,
  }) = _Release;

  factory Release.fromJson(Map<String, dynamic> json) =>
      _$ReleaseFromJson(json);
}
