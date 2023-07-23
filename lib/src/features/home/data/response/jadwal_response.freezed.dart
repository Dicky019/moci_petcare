// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jadwal_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JadwalResponse _$JadwalResponseFromJson(Map<String, dynamic> json) {
  return _JadwalResponse.fromJson(json);
}

/// @nodoc
mixin _$JadwalResponse {
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DataResponse? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JadwalResponseCopyWith<JadwalResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JadwalResponseCopyWith<$Res> {
  factory $JadwalResponseCopyWith(
          JadwalResponse value, $Res Function(JadwalResponse) then) =
      _$JadwalResponseCopyWithImpl<$Res, JadwalResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "data") DataResponse? data});

  $DataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$JadwalResponseCopyWithImpl<$Res, $Val extends JadwalResponse>
    implements $JadwalResponseCopyWith<$Res> {
  _$JadwalResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JadwalResponseCopyWith<$Res>
    implements $JadwalResponseCopyWith<$Res> {
  factory _$$_JadwalResponseCopyWith(
          _$_JadwalResponse value, $Res Function(_$_JadwalResponse) then) =
      __$$_JadwalResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "data") DataResponse? data});

  @override
  $DataResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_JadwalResponseCopyWithImpl<$Res>
    extends _$JadwalResponseCopyWithImpl<$Res, _$_JadwalResponse>
    implements _$$_JadwalResponseCopyWith<$Res> {
  __$$_JadwalResponseCopyWithImpl(
      _$_JadwalResponse _value, $Res Function(_$_JadwalResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_JadwalResponse(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JadwalResponse implements _JadwalResponse {
  const _$_JadwalResponse(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "data") this.data});

  factory _$_JadwalResponse.fromJson(Map<String, dynamic> json) =>
      _$$_JadwalResponseFromJson(json);

  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "data")
  final DataResponse? data;

  @override
  String toString() {
    return 'JadwalResponse(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JadwalResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JadwalResponseCopyWith<_$_JadwalResponse> get copyWith =>
      __$$_JadwalResponseCopyWithImpl<_$_JadwalResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JadwalResponseToJson(
      this,
    );
  }
}

abstract class _JadwalResponse implements JadwalResponse {
  const factory _JadwalResponse(
      {@JsonKey(name: "code") final String? code,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "data") final DataResponse? data}) = _$_JadwalResponse;

  factory _JadwalResponse.fromJson(Map<String, dynamic> json) =
      _$_JadwalResponse.fromJson;

  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "data")
  DataResponse? get data;
  @override
  @JsonKey(ignore: true)
  _$$_JadwalResponseCopyWith<_$_JadwalResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
