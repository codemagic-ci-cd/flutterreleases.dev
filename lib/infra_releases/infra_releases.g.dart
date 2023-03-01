// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infra_releases.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InfraReleases _$$_InfraReleasesFromJson(Map<String, dynamic> json) =>
    _$_InfraReleases(
      baseUrl: json['base_url'] as String?,
      currentRelease: json['current_release'] == null
          ? null
          : CurrentRelease.fromJson(
              json['current_release'] as Map<String, dynamic>),
      releases: (json['releases'] as List<dynamic>?)
          ?.map((e) => Release.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InfraReleasesToJson(_$_InfraReleases instance) =>
    <String, dynamic>{
      'base_url': instance.baseUrl,
      'current_release': instance.currentRelease,
      'releases': instance.releases,
    };
