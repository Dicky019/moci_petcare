// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'layanan_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LayananResponse _$LayananResponseFromJson(Map<String, dynamic> json) {
  return _LayananResponse.fromJson(json);
}

/// @nodoc
mixin _$LayananResponse {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "hari")
  String? get hari => throw _privateConstructorUsedError;
  @JsonKey(name: "jam")
  String? get jam => throw _privateConstructorUsedError;
  @JsonKey(name: "jenisLayanan")
  String? get jenisLayanan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LayananResponseCopyWith<LayananResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayananResponseCopyWith<$Res> {
  factory $LayananResponseCopyWith(
          LayananResponse value, $Res Function(LayananResponse) then) =
      _$LayananResponseCopyWithImpl<$Res, LayananResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "createdAt") String? createdAt,
      @JsonKey(name: "updatedAt") String? updatedAt,
      @JsonKey(name: "hari") String? hari,
      @JsonKey(name: "jam") String? jam,
      @JsonKey(name: "jenisLayanan") String? jenisLayanan});
}

/// @nodoc
class _$LayananResponseCopyWithImpl<$Res, $Val extends LayananResponse>
    implements $LayananResponseCopyWith<$Res> {
  _$LayananResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hari = freezed,
    Object? jam = freezed,
    Object? jenisLayanan = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      hari: freezed == hari
          ? _value.hari
          : hari // ignore: cast_nullable_to_non_nullable
              as String?,
      jam: freezed == jam
          ? _value.jam
          : jam // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisLayanan: freezed == jenisLayanan
          ? _value.jenisLayanan
          : jenisLayanan // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LayananResponseCopyWith<$Res>
    implements $LayananResponseCopyWith<$Res> {
  factory _$$_LayananResponseCopyWith(
          _$_LayananResponse value, $Res Function(_$_LayananResponse) then) =
      __$$_LayananResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "createdAt") String? createdAt,
      @JsonKey(name: "updatedAt") String? updatedAt,
      @JsonKey(name: "hari") String? hari,
      @JsonKey(name: "jam") String? jam,
      @JsonKey(name: "jenisLayanan") String? jenisLayanan});
}

/// @nodoc
class __$$_LayananResponseCopyWithImpl<$Res>
    extends _$LayananResponseCopyWithImpl<$Res, _$_LayananResponse>
    implements _$$_LayananResponseCopyWith<$Res> {
  __$$_LayananResponseCopyWithImpl(
      _$_LayananResponse _value, $Res Function(_$_LayananResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hari = freezed,
    Object? jam = freezed,
    Object? jenisLayanan = freezed,
  }) {
    return _then(_$_LayananResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      hari: freezed == hari
          ? _value.hari
          : hari // ignore: cast_nullable_to_non_nullable
              as String?,
      jam: freezed == jam
          ? _value.jam
          : jam // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisLayanan: freezed == jenisLayanan
          ? _value.jenisLayanan
          : jenisLayanan // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LayananResponse implements _LayananResponse {
  const _$_LayananResponse(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "hari") this.hari,
      @JsonKey(name: "jam") this.jam,
      @JsonKey(name: "jenisLayanan") this.jenisLayanan});

  factory _$_LayananResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LayananResponseFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "createdAt")
  final String? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final String? updatedAt;
  @override
  @JsonKey(name: "hari")
  final String? hari;
  @override
  @JsonKey(name: "jam")
  final String? jam;
  @override
  @JsonKey(name: "jenisLayanan")
  final String? jenisLayanan;

  @override
  String toString() {
    return 'LayananResponse(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, hari: $hari, jam: $jam, jenisLayanan: $jenisLayanan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LayananResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.hari, hari) || other.hari == hari) &&
            (identical(other.jam, jam) || other.jam == jam) &&
            (identical(other.jenisLayanan, jenisLayanan) ||
                other.jenisLayanan == jenisLayanan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, createdAt, updatedAt, hari, jam, jenisLayanan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LayananResponseCopyWith<_$_LayananResponse> get copyWith =>
      __$$_LayananResponseCopyWithImpl<_$_LayananResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LayananResponseToJson(
      this,
    );
  }
}

abstract class _LayananResponse implements LayananResponse {
  const factory _LayananResponse(
          {@JsonKey(name: "id") final String? id,
          @JsonKey(name: "createdAt") final String? createdAt,
          @JsonKey(name: "updatedAt") final String? updatedAt,
          @JsonKey(name: "hari") final String? hari,
          @JsonKey(name: "jam") final String? jam,
          @JsonKey(name: "jenisLayanan") final String? jenisLayanan}) =
      _$_LayananResponse;

  factory _LayananResponse.fromJson(Map<String, dynamic> json) =
      _$_LayananResponse.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "createdAt")
  String? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  String? get updatedAt;
  @override
  @JsonKey(name: "hari")
  String? get hari;
  @override
  @JsonKey(name: "jam")
  String? get jam;
  @override
  @JsonKey(name: "jenisLayanan")
  String? get jenisLayanan;
  @override
  @JsonKey(ignore: true)
  _$$_LayananResponseCopyWith<_$_LayananResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
