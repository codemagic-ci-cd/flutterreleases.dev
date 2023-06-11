// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'release.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Release _$ReleaseFromJson(Map<String, dynamic> json) {
  return _Release.fromJson(json);
}

/// @nodoc
mixin _$Release {
  String? get hash => throw _privateConstructorUsedError;
  String? get channel => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'dart_sdk_version')
  String? get dartSdkVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'dart_sdk_arch')
  String? get dartSdkArch => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  String? get archive => throw _privateConstructorUsedError;
  String? get sha256 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReleaseCopyWith<Release> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReleaseCopyWith<$Res> {
  factory $ReleaseCopyWith(Release value, $Res Function(Release) then) =
      _$ReleaseCopyWithImpl<$Res, Release>;
  @useResult
  $Res call(
      {String? hash,
      String? channel,
      String? version,
      @JsonKey(name: 'dart_sdk_version') String? dartSdkVersion,
      @JsonKey(name: 'dart_sdk_arch') String? dartSdkArch,
      @JsonKey(name: 'release_date') DateTime? releaseDate,
      String? archive,
      String? sha256});
}

/// @nodoc
class _$ReleaseCopyWithImpl<$Res, $Val extends Release>
    implements $ReleaseCopyWith<$Res> {
  _$ReleaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = freezed,
    Object? channel = freezed,
    Object? version = freezed,
    Object? dartSdkVersion = freezed,
    Object? dartSdkArch = freezed,
    Object? releaseDate = freezed,
    Object? archive = freezed,
    Object? sha256 = freezed,
  }) {
    return _then(_value.copyWith(
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      dartSdkVersion: freezed == dartSdkVersion
          ? _value.dartSdkVersion
          : dartSdkVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      dartSdkArch: freezed == dartSdkArch
          ? _value.dartSdkArch
          : dartSdkArch // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      archive: freezed == archive
          ? _value.archive
          : archive // ignore: cast_nullable_to_non_nullable
              as String?,
      sha256: freezed == sha256
          ? _value.sha256
          : sha256 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReleaseCopyWith<$Res> implements $ReleaseCopyWith<$Res> {
  factory _$$_ReleaseCopyWith(
          _$_Release value, $Res Function(_$_Release) then) =
      __$$_ReleaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? hash,
      String? channel,
      String? version,
      @JsonKey(name: 'dart_sdk_version') String? dartSdkVersion,
      @JsonKey(name: 'dart_sdk_arch') String? dartSdkArch,
      @JsonKey(name: 'release_date') DateTime? releaseDate,
      String? archive,
      String? sha256});
}

/// @nodoc
class __$$_ReleaseCopyWithImpl<$Res>
    extends _$ReleaseCopyWithImpl<$Res, _$_Release>
    implements _$$_ReleaseCopyWith<$Res> {
  __$$_ReleaseCopyWithImpl(_$_Release _value, $Res Function(_$_Release) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = freezed,
    Object? channel = freezed,
    Object? version = freezed,
    Object? dartSdkVersion = freezed,
    Object? dartSdkArch = freezed,
    Object? releaseDate = freezed,
    Object? archive = freezed,
    Object? sha256 = freezed,
  }) {
    return _then(_$_Release(
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      dartSdkVersion: freezed == dartSdkVersion
          ? _value.dartSdkVersion
          : dartSdkVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      dartSdkArch: freezed == dartSdkArch
          ? _value.dartSdkArch
          : dartSdkArch // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      archive: freezed == archive
          ? _value.archive
          : archive // ignore: cast_nullable_to_non_nullable
              as String?,
      sha256: freezed == sha256
          ? _value.sha256
          : sha256 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Release implements _Release {
  _$_Release(
      {this.hash,
      this.channel,
      this.version,
      @JsonKey(name: 'dart_sdk_version') this.dartSdkVersion,
      @JsonKey(name: 'dart_sdk_arch') this.dartSdkArch,
      @JsonKey(name: 'release_date') this.releaseDate,
      this.archive,
      this.sha256});

  factory _$_Release.fromJson(Map<String, dynamic> json) =>
      _$$_ReleaseFromJson(json);

  @override
  final String? hash;
  @override
  final String? channel;
  @override
  final String? version;
  @override
  @JsonKey(name: 'dart_sdk_version')
  final String? dartSdkVersion;
  @override
  @JsonKey(name: 'dart_sdk_arch')
  final String? dartSdkArch;
  @override
  @JsonKey(name: 'release_date')
  final DateTime? releaseDate;
  @override
  final String? archive;
  @override
  final String? sha256;

  @override
  String toString() {
    return 'Release(hash: $hash, channel: $channel, version: $version, dartSdkVersion: $dartSdkVersion, dartSdkArch: $dartSdkArch, releaseDate: $releaseDate, archive: $archive, sha256: $sha256)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Release &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.dartSdkVersion, dartSdkVersion) ||
                other.dartSdkVersion == dartSdkVersion) &&
            (identical(other.dartSdkArch, dartSdkArch) ||
                other.dartSdkArch == dartSdkArch) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.archive, archive) || other.archive == archive) &&
            (identical(other.sha256, sha256) || other.sha256 == sha256));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hash, channel, version,
      dartSdkVersion, dartSdkArch, releaseDate, archive, sha256);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReleaseCopyWith<_$_Release> get copyWith =>
      __$$_ReleaseCopyWithImpl<_$_Release>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReleaseToJson(
      this,
    );
  }
}

abstract class _Release implements Release {
  factory _Release(
      {final String? hash,
      final String? channel,
      final String? version,
      @JsonKey(name: 'dart_sdk_version') final String? dartSdkVersion,
      @JsonKey(name: 'dart_sdk_arch') final String? dartSdkArch,
      @JsonKey(name: 'release_date') final DateTime? releaseDate,
      final String? archive,
      final String? sha256}) = _$_Release;

  factory _Release.fromJson(Map<String, dynamic> json) = _$_Release.fromJson;

  @override
  String? get hash;
  @override
  String? get channel;
  @override
  String? get version;
  @override
  @JsonKey(name: 'dart_sdk_version')
  String? get dartSdkVersion;
  @override
  @JsonKey(name: 'dart_sdk_arch')
  String? get dartSdkArch;
  @override
  @JsonKey(name: 'release_date')
  DateTime? get releaseDate;
  @override
  String? get archive;
  @override
  String? get sha256;
  @override
  @JsonKey(ignore: true)
  _$$_ReleaseCopyWith<_$_Release> get copyWith =>
      throw _privateConstructorUsedError;
}
