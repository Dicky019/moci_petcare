// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataResponse _$DataResponseFromJson(Map<String, dynamic> json) {
  return _DataResponse.fromJson(json);
}

/// @nodoc
mixin _$DataResponse {
  @JsonKey(name: "layananGrouming")
  List<LayananResponse>? get layananGrouming =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "layananKesehatan")
  List<LayananResponse>? get layananKesehatan =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "layananKonsultasi")
  List<LayananResponse>? get layananKonsultasi =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataResponseCopyWith<DataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataResponseCopyWith<$Res> {
  factory $DataResponseCopyWith(
          DataResponse value, $Res Function(DataResponse) then) =
      _$DataResponseCopyWithImpl<$Res, DataResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "layananGrouming") List<LayananResponse>? layananGrouming,
      @JsonKey(name: "layananKesehatan")
      List<LayananResponse>? layananKesehatan,
      @JsonKey(name: "layananKonsultasi")
      List<LayananResponse>? layananKonsultasi});
}

/// @nodoc
class _$DataResponseCopyWithImpl<$Res, $Val extends DataResponse>
    implements $DataResponseCopyWith<$Res> {
  _$DataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layananGrouming = freezed,
    Object? layananKesehatan = freezed,
    Object? layananKonsultasi = freezed,
  }) {
    return _then(_value.copyWith(
      layananGrouming: freezed == layananGrouming
          ? _value.layananGrouming
          : layananGrouming // ignore: cast_nullable_to_non_nullable
              as List<LayananResponse>?,
      layananKesehatan: freezed == layananKesehatan
          ? _value.layananKesehatan
          : layananKesehatan // ignore: cast_nullable_to_non_nullable
              as List<LayananResponse>?,
      layananKonsultasi: freezed == layananKonsultasi
          ? _value.layananKonsultasi
          : layananKonsultasi // ignore: cast_nullable_to_non_nullable
              as List<LayananResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataResponseCopyWith<$Res>
    implements $DataResponseCopyWith<$Res> {
  factory _$$_DataResponseCopyWith(
          _$_DataResponse value, $Res Function(_$_DataResponse) then) =
      __$$_DataResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "layananGrouming") List<LayananResponse>? layananGrouming,
      @JsonKey(name: "layananKesehatan")
      List<LayananResponse>? layananKesehatan,
      @JsonKey(name: "layananKonsultasi")
      List<LayananResponse>? layananKonsultasi});
}

/// @nodoc
class __$$_DataResponseCopyWithImpl<$Res>
    extends _$DataResponseCopyWithImpl<$Res, _$_DataResponse>
    implements _$$_DataResponseCopyWith<$Res> {
  __$$_DataResponseCopyWithImpl(
      _$_DataResponse _value, $Res Function(_$_DataResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layananGrouming = freezed,
    Object? layananKesehatan = freezed,
    Object? layananKonsultasi = freezed,
  }) {
    return _then(_$_DataResponse(
      layananGrouming: freezed == layananGrouming
          ? _value._layananGrouming
          : layananGrouming // ignore: cast_nullable_to_non_nullable
              as List<LayananResponse>?,
      layananKesehatan: freezed == layananKesehatan
          ? _value._layananKesehatan
          : layananKesehatan // ignore: cast_nullable_to_non_nullable
              as List<LayananResponse>?,
      layananKonsultasi: freezed == layananKonsultasi
          ? _value._layananKonsultasi
          : layananKonsultasi // ignore: cast_nullable_to_non_nullable
              as List<LayananResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataResponse implements _DataResponse {
  const _$_DataResponse(
      {@JsonKey(name: "layananGrouming")
      final List<LayananResponse>? layananGrouming,
      @JsonKey(name: "layananKesehatan")
      final List<LayananResponse>? layananKesehatan,
      @JsonKey(name: "layananKonsultasi")
      final List<LayananResponse>? layananKonsultasi})
      : _layananGrouming = layananGrouming,
        _layananKesehatan = layananKesehatan,
        _layananKonsultasi = layananKonsultasi;

  factory _$_DataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DataResponseFromJson(json);

  final List<LayananResponse>? _layananGrouming;
  @override
  @JsonKey(name: "layananGrouming")
  List<LayananResponse>? get layananGrouming {
    final value = _layananGrouming;
    if (value == null) return null;
    if (_layananGrouming is EqualUnmodifiableListView) return _layananGrouming;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LayananResponse>? _layananKesehatan;
  @override
  @JsonKey(name: "layananKesehatan")
  List<LayananResponse>? get layananKesehatan {
    final value = _layananKesehatan;
    if (value == null) return null;
    if (_layananKesehatan is EqualUnmodifiableListView)
      return _layananKesehatan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<LayananResponse>? _layananKonsultasi;
  @override
  @JsonKey(name: "layananKonsultasi")
  List<LayananResponse>? get layananKonsultasi {
    final value = _layananKonsultasi;
    if (value == null) return null;
    if (_layananKonsultasi is EqualUnmodifiableListView)
      return _layananKonsultasi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataResponse(layananGrouming: $layananGrouming, layananKesehatan: $layananKesehatan, layananKonsultasi: $layananKonsultasi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataResponse &&
            const DeepCollectionEquality()
                .equals(other._layananGrouming, _layananGrouming) &&
            const DeepCollectionEquality()
                .equals(other._layananKesehatan, _layananKesehatan) &&
            const DeepCollectionEquality()
                .equals(other._layananKonsultasi, _layananKonsultasi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_layananGrouming),
      const DeepCollectionEquality().hash(_layananKesehatan),
      const DeepCollectionEquality().hash(_layananKonsultasi));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataResponseCopyWith<_$_DataResponse> get copyWith =>
      __$$_DataResponseCopyWithImpl<_$_DataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataResponseToJson(
      this,
    );
  }
}

abstract class _DataResponse implements DataResponse {
  const factory _DataResponse(
      {@JsonKey(name: "layananGrouming")
      final List<LayananResponse>? layananGrouming,
      @JsonKey(name: "layananKesehatan")
      final List<LayananResponse>? layananKesehatan,
      @JsonKey(name: "layananKonsultasi")
      final List<LayananResponse>? layananKonsultasi}) = _$_DataResponse;

  factory _DataResponse.fromJson(Map<String, dynamic> json) =
      _$_DataResponse.fromJson;

  @override
  @JsonKey(name: "layananGrouming")
  List<LayananResponse>? get layananGrouming;
  @override
  @JsonKey(name: "layananKesehatan")
  List<LayananResponse>? get layananKesehatan;
  @override
  @JsonKey(name: "layananKonsultasi")
  List<LayananResponse>? get layananKonsultasi;
  @override
  @JsonKey(ignore: true)
  _$$_DataResponseCopyWith<_$_DataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
