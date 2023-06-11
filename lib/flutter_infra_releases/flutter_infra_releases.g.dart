// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flutter_infra_releases.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterInfraReleases _$$_FlutterInfraReleasesFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterInfraReleases(
      baseUrl: json['base_url'] as String?,
      currentRelease: json['current_release'] == null
          ? null
          : CurrentRelease.fromJson(
              json['current_release'] as Map<String, dynamic>),
      releases: (json['releases'] as List<dynamic>?)
          ?.map((e) => Release.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FlutterInfraReleasesToJson(
        _$_FlutterInfraReleases instance) =>
    <String, dynamic>{
      'base_url': instance.baseUrl,
      'current_release': instance.currentRelease,
      'releases': instance.releases,
    };
