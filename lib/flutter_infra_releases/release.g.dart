// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Release _$$_ReleaseFromJson(Map<String, dynamic> json) => _$_Release(
      hash: json['hash'] as String?,
      channel: json['channel'] as String?,
      version: json['version'] as String?,
      dartSdkVersion: json['dart_sdk_version'] as String?,
      dartSdkArch: json['dart_sdk_arch'] as String?,
      releaseDate: json['release_date'] == null
          ? null
          : DateTime.parse(json['release_date'] as String),
      archive: json['archive'] as String?,
      sha256: json['sha256'] as String?,
    );

Map<String, dynamic> _$$_ReleaseToJson(_$_Release instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'channel': instance.channel,
      'version': instance.version,
      'dart_sdk_version': instance.dartSdkVersion,
      'dart_sdk_arch': instance.dartSdkArch,
      'release_date': instance.releaseDate?.toIso8601String(),
      'archive': instance.archive,
      'sha256': instance.sha256,
    };
