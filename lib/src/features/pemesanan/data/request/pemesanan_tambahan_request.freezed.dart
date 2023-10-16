// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pemesanan_tambahan_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PemesananTambahanRequest _$PemesananTambahanRequestFromJson(
    Map<String, dynamic> json) {
  return _PemesananTambahanRequest.fromJson(json);
}

/// @nodoc
mixin _$PemesananTambahanRequest {
  String get tambahanPemesanan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PemesananTambahanRequestCopyWith<PemesananTambahanRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PemesananTambahanRequestCopyWith<$Res> {
  factory $PemesananTambahanRequestCopyWith(PemesananTambahanRequest value,
          $Res Function(PemesananTambahanRequest) then) =
      _$PemesananTambahanRequestCopyWithImpl<$Res, PemesananTambahanRequest>;
  @useResult
  $Res call({String tambahanPemesanan});
}

/// @nodoc
class _$PemesananTambahanRequestCopyWithImpl<$Res,
        $Val extends PemesananTambahanRequest>
    implements $PemesananTambahanRequestCopyWith<$Res> {
  _$PemesananTambahanRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tambahanPemesanan = null,
  }) {
    return _then(_value.copyWith(
      tambahanPemesanan: null == tambahanPemesanan
          ? _value.tambahanPemesanan
          : tambahanPemesanan // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PemesananTambahanRequestCopyWith<$Res>
    implements $PemesananTambahanRequestCopyWith<$Res> {
  factory _$$_PemesananTambahanRequestCopyWith(
          _$_PemesananTambahanRequest value,
          $Res Function(_$_PemesananTambahanRequest) then) =
      __$$_PemesananTambahanRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tambahanPemesanan});
}

/// @nodoc
class __$$_PemesananTambahanRequestCopyWithImpl<$Res>
    extends _$PemesananTambahanRequestCopyWithImpl<$Res,
        _$_PemesananTambahanRequest>
    implements _$$_PemesananTambahanRequestCopyWith<$Res> {
  __$$_PemesananTambahanRequestCopyWithImpl(_$_PemesananTambahanRequest _value,
      $Res Function(_$_PemesananTambahanRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tambahanPemesanan = null,
  }) {
    return _then(_$_PemesananTambahanRequest(
      tambahanPemesanan: null == tambahanPemesanan
          ? _value.tambahanPemesanan
          : tambahanPemesanan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PemesananTambahanRequest implements _PemesananTambahanRequest {
  const _$_PemesananTambahanRequest({required this.tambahanPemesanan});

  factory _$_PemesananTambahanRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PemesananTambahanRequestFromJson(json);

  @override
  final String tambahanPemesanan;

  @override
  String toString() {
    return 'PemesananTambahanRequest(tambahanPemesanan: $tambahanPemesanan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PemesananTambahanRequest &&
            (identical(other.tambahanPemesanan, tambahanPemesanan) ||
                other.tambahanPemesanan == tambahanPemesanan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tambahanPemesanan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PemesananTambahanRequestCopyWith<_$_PemesananTambahanRequest>
      get copyWith => __$$_PemesananTambahanRequestCopyWithImpl<
          _$_PemesananTambahanRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PemesananTambahanRequestToJson(
      this,
    );
  }
}

abstract class _PemesananTambahanRequest implements PemesananTambahanRequest {
  const factory _PemesananTambahanRequest(
      {required final String tambahanPemesanan}) = _$_PemesananTambahanRequest;

  factory _PemesananTambahanRequest.fromJson(Map<String, dynamic> json) =
      _$_PemesananTambahanRequest.fromJson;

  @override
  String get tambahanPemesanan;
  @override
  @JsonKey(ignore: true)
  _$$_PemesananTambahanRequestCopyWith<_$_PemesananTambahanRequest>
      get copyWith => throw _privateConstructorUsedError;
}
