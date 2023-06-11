// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_release.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentRelease _$CurrentReleaseFromJson(Map<String, dynamic> json) {
  return _CurrentRelease.fromJson(json);
}

/// @nodoc
mixin _$CurrentRelease {
  String? get beta => throw _privateConstructorUsedError;
  String? get dev => throw _privateConstructorUsedError;
  String? get stable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentReleaseCopyWith<CurrentRelease> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentReleaseCopyWith<$Res> {
  factory $CurrentReleaseCopyWith(
          CurrentRelease value, $Res Function(CurrentRelease) then) =
      _$CurrentReleaseCopyWithImpl<$Res, CurrentRelease>;
  @useResult
  $Res call({String? beta, String? dev, String? stable});
}

/// @nodoc
class _$CurrentReleaseCopyWithImpl<$Res, $Val extends CurrentRelease>
    implements $CurrentReleaseCopyWith<$Res> {
  _$CurrentReleaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beta = freezed,
    Object? dev = freezed,
    Object? stable = freezed,
  }) {
    return _then(_value.copyWith(
      beta: freezed == beta
          ? _value.beta
          : beta // ignore: cast_nullable_to_non_nullable
              as String?,
      dev: freezed == dev
          ? _value.dev
          : dev // ignore: cast_nullable_to_non_nullable
              as String?,
      stable: freezed == stable
          ? _value.stable
          : stable // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentReleaseCopyWith<$Res>
    implements $CurrentReleaseCopyWith<$Res> {
  factory _$$_CurrentReleaseCopyWith(
          _$_CurrentRelease value, $Res Function(_$_CurrentRelease) then) =
      __$$_CurrentReleaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? beta, String? dev, String? stable});
}

/// @nodoc
class __$$_CurrentReleaseCopyWithImpl<$Res>
    extends _$CurrentReleaseCopyWithImpl<$Res, _$_CurrentRelease>
    implements _$$_CurrentReleaseCopyWith<$Res> {
  __$$_CurrentReleaseCopyWithImpl(
      _$_CurrentRelease _value, $Res Function(_$_CurrentRelease) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beta = freezed,
    Object? dev = freezed,
    Object? stable = freezed,
  }) {
    return _then(_$_CurrentRelease(
      beta: freezed == beta
          ? _value.beta
          : beta // ignore: cast_nullable_to_non_nullable
              as String?,
      dev: freezed == dev
          ? _value.dev
          : dev // ignore: cast_nullable_to_non_nullable
              as String?,
      stable: freezed == stable
          ? _value.stable
          : stable // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentRelease implements _CurrentRelease {
  _$_CurrentRelease({this.beta, this.dev, this.stable});

  factory _$_CurrentRelease.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentReleaseFromJson(json);

  @override
  final String? beta;
  @override
  final String? dev;
  @override
  final String? stable;

  @override
  String toString() {
    return 'CurrentRelease(beta: $beta, dev: $dev, stable: $stable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentRelease &&
            (identical(other.beta, beta) || other.beta == beta) &&
            (identical(other.dev, dev) || other.dev == dev) &&
            (identical(other.stable, stable) || other.stable == stable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, beta, dev, stable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentReleaseCopyWith<_$_CurrentRelease> get copyWith =>
      __$$_CurrentReleaseCopyWithImpl<_$_CurrentRelease>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentReleaseToJson(
      this,
    );
  }
}

abstract class _CurrentRelease implements CurrentRelease {
  factory _CurrentRelease(
      {final String? beta,
      final String? dev,
      final String? stable}) = _$_CurrentRelease;

  factory _CurrentRelease.fromJson(Map<String, dynamic> json) =
      _$_CurrentRelease.fromJson;

  @override
  String? get beta;
  @override
  String? get dev;
  @override
  String? get stable;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentReleaseCopyWith<_$_CurrentRelease> get copyWith =>
      throw _privateConstructorUsedError;
}
