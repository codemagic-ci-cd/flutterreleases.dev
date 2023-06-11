// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flutter_infra_releases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterInfraReleases _$FlutterInfraReleasesFromJson(Map<String, dynamic> json) {
  return _FlutterInfraReleases.fromJson(json);
}

/// @nodoc
mixin _$FlutterInfraReleases {
  @JsonKey(name: 'base_url')
  String? get baseUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_release')
  CurrentRelease? get currentRelease => throw _privateConstructorUsedError;
  List<Release>? get releases => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlutterInfraReleasesCopyWith<FlutterInfraReleases> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlutterInfraReleasesCopyWith<$Res> {
  factory $FlutterInfraReleasesCopyWith(FlutterInfraReleases value,
          $Res Function(FlutterInfraReleases) then) =
      _$FlutterInfraReleasesCopyWithImpl<$Res, FlutterInfraReleases>;
  @useResult
  $Res call(
      {@JsonKey(name: 'base_url') String? baseUrl,
      @JsonKey(name: 'current_release') CurrentRelease? currentRelease,
      List<Release>? releases});

  $CurrentReleaseCopyWith<$Res>? get currentRelease;
}

/// @nodoc
class _$FlutterInfraReleasesCopyWithImpl<$Res,
        $Val extends FlutterInfraReleases>
    implements $FlutterInfraReleasesCopyWith<$Res> {
  _$FlutterInfraReleasesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = freezed,
    Object? currentRelease = freezed,
    Object? releases = freezed,
  }) {
    return _then(_value.copyWith(
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      currentRelease: freezed == currentRelease
          ? _value.currentRelease
          : currentRelease // ignore: cast_nullable_to_non_nullable
              as CurrentRelease?,
      releases: freezed == releases
          ? _value.releases
          : releases // ignore: cast_nullable_to_non_nullable
              as List<Release>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentReleaseCopyWith<$Res>? get currentRelease {
    if (_value.currentRelease == null) {
      return null;
    }

    return $CurrentReleaseCopyWith<$Res>(_value.currentRelease!, (value) {
      return _then(_value.copyWith(currentRelease: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FlutterInfraReleasesCopyWith<$Res>
    implements $FlutterInfraReleasesCopyWith<$Res> {
  factory _$$_FlutterInfraReleasesCopyWith(_$_FlutterInfraReleases value,
          $Res Function(_$_FlutterInfraReleases) then) =
      __$$_FlutterInfraReleasesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'base_url') String? baseUrl,
      @JsonKey(name: 'current_release') CurrentRelease? currentRelease,
      List<Release>? releases});

  @override
  $CurrentReleaseCopyWith<$Res>? get currentRelease;
}

/// @nodoc
class __$$_FlutterInfraReleasesCopyWithImpl<$Res>
    extends _$FlutterInfraReleasesCopyWithImpl<$Res, _$_FlutterInfraReleases>
    implements _$$_FlutterInfraReleasesCopyWith<$Res> {
  __$$_FlutterInfraReleasesCopyWithImpl(_$_FlutterInfraReleases _value,
      $Res Function(_$_FlutterInfraReleases) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = freezed,
    Object? currentRelease = freezed,
    Object? releases = freezed,
  }) {
    return _then(_$_FlutterInfraReleases(
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      currentRelease: freezed == currentRelease
          ? _value.currentRelease
          : currentRelease // ignore: cast_nullable_to_non_nullable
              as CurrentRelease?,
      releases: freezed == releases
          ? _value._releases
          : releases // ignore: cast_nullable_to_non_nullable
              as List<Release>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FlutterInfraReleases implements _FlutterInfraReleases {
  _$_FlutterInfraReleases(
      {@JsonKey(name: 'base_url') this.baseUrl,
      @JsonKey(name: 'current_release') this.currentRelease,
      final List<Release>? releases})
      : _releases = releases;

  factory _$_FlutterInfraReleases.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterInfraReleasesFromJson(json);

  @override
  @JsonKey(name: 'base_url')
  final String? baseUrl;
  @override
  @JsonKey(name: 'current_release')
  final CurrentRelease? currentRelease;
  final List<Release>? _releases;
  @override
  List<Release>? get releases {
    final value = _releases;
    if (value == null) return null;
    if (_releases is EqualUnmodifiableListView) return _releases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FlutterInfraReleases(baseUrl: $baseUrl, currentRelease: $currentRelease, releases: $releases)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterInfraReleases &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.currentRelease, currentRelease) ||
                other.currentRelease == currentRelease) &&
            const DeepCollectionEquality().equals(other._releases, _releases));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseUrl, currentRelease,
      const DeepCollectionEquality().hash(_releases));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlutterInfraReleasesCopyWith<_$_FlutterInfraReleases> get copyWith =>
      __$$_FlutterInfraReleasesCopyWithImpl<_$_FlutterInfraReleases>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlutterInfraReleasesToJson(
      this,
    );
  }
}

abstract class _FlutterInfraReleases implements FlutterInfraReleases {
  factory _FlutterInfraReleases(
      {@JsonKey(name: 'base_url') final String? baseUrl,
      @JsonKey(name: 'current_release') final CurrentRelease? currentRelease,
      final List<Release>? releases}) = _$_FlutterInfraReleases;

  factory _FlutterInfraReleases.fromJson(Map<String, dynamic> json) =
      _$_FlutterInfraReleases.fromJson;

  @override
  @JsonKey(name: 'base_url')
  String? get baseUrl;
  @override
  @JsonKey(name: 'current_release')
  CurrentRelease? get currentRelease;
  @override
  List<Release>? get releases;
  @override
  @JsonKey(ignore: true)
  _$$_FlutterInfraReleasesCopyWith<_$_FlutterInfraReleases> get copyWith =>
      throw _privateConstructorUsedError;
}
