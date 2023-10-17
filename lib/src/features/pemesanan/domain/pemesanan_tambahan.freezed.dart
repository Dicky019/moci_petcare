// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pemesanan_tambahan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PemesananTambahan _$PemesananTambahanFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _PemesananTambahan.fromJson(json);
    case 'empty':
      return _PemesananTambahanEmpty.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PemesananTambahan',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PemesananTambahan {
  String get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get jenisLayanan => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String value, String jenisLayanan) $default, {
    required TResult Function(String id, String value, String jenisLayanan)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String value, String jenisLayanan)? $default, {
    TResult? Function(String id, String value, String jenisLayanan)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String value, String jenisLayanan)? $default, {
    TResult Function(String id, String value, String jenisLayanan)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PemesananTambahan value) $default, {
    required TResult Function(_PemesananTambahanEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PemesananTambahan value)? $default, {
    TResult? Function(_PemesananTambahanEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PemesananTambahan value)? $default, {
    TResult Function(_PemesananTambahanEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PemesananTambahanCopyWith<PemesananTambahan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PemesananTambahanCopyWith<$Res> {
  factory $PemesananTambahanCopyWith(
          PemesananTambahan value, $Res Function(PemesananTambahan) then) =
      _$PemesananTambahanCopyWithImpl<$Res, PemesananTambahan>;
  @useResult
  $Res call({String id, String value, String jenisLayanan});
}

/// @nodoc
class _$PemesananTambahanCopyWithImpl<$Res, $Val extends PemesananTambahan>
    implements $PemesananTambahanCopyWith<$Res> {
  _$PemesananTambahanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? jenisLayanan = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      jenisLayanan: null == jenisLayanan
          ? _value.jenisLayanan
          : jenisLayanan // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PemesananTambahanCopyWith<$Res>
    implements $PemesananTambahanCopyWith<$Res> {
  factory _$$_PemesananTambahanCopyWith(_$_PemesananTambahan value,
          $Res Function(_$_PemesananTambahan) then) =
      __$$_PemesananTambahanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String value, String jenisLayanan});
}

/// @nodoc
class __$$_PemesananTambahanCopyWithImpl<$Res>
    extends _$PemesananTambahanCopyWithImpl<$Res, _$_PemesananTambahan>
    implements _$$_PemesananTambahanCopyWith<$Res> {
  __$$_PemesananTambahanCopyWithImpl(
      _$_PemesananTambahan _value, $Res Function(_$_PemesananTambahan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? jenisLayanan = null,
  }) {
    return _then(_$_PemesananTambahan(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      jenisLayanan: null == jenisLayanan
          ? _value.jenisLayanan
          : jenisLayanan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PemesananTambahan extends _PemesananTambahan {
  _$_PemesananTambahan(
      {required this.id,
      required this.value,
      required this.jenisLayanan,
      final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$_PemesananTambahan.fromJson(Map<String, dynamic> json) =>
      _$$_PemesananTambahanFromJson(json);

  @override
  final String id;
  @override
  final String value;
  @override
  final String jenisLayanan;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PemesananTambahan(id: $id, value: $value, jenisLayanan: $jenisLayanan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PemesananTambahan &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.jenisLayanan, jenisLayanan) ||
                other.jenisLayanan == jenisLayanan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, jenisLayanan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PemesananTambahanCopyWith<_$_PemesananTambahan> get copyWith =>
      __$$_PemesananTambahanCopyWithImpl<_$_PemesananTambahan>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String value, String jenisLayanan) $default, {
    required TResult Function(String id, String value, String jenisLayanan)
        empty,
  }) {
    return $default(id, value, jenisLayanan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String value, String jenisLayanan)? $default, {
    TResult? Function(String id, String value, String jenisLayanan)? empty,
  }) {
    return $default?.call(id, value, jenisLayanan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String value, String jenisLayanan)? $default, {
    TResult Function(String id, String value, String jenisLayanan)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, value, jenisLayanan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PemesananTambahan value) $default, {
    required TResult Function(_PemesananTambahanEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PemesananTambahan value)? $default, {
    TResult? Function(_PemesananTambahanEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PemesananTambahan value)? $default, {
    TResult Function(_PemesananTambahanEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PemesananTambahanToJson(
      this,
    );
  }
}

abstract class _PemesananTambahan extends PemesananTambahan {
  factory _PemesananTambahan(
      {required final String id,
      required final String value,
      required final String jenisLayanan}) = _$_PemesananTambahan;
  _PemesananTambahan._() : super._();

  factory _PemesananTambahan.fromJson(Map<String, dynamic> json) =
      _$_PemesananTambahan.fromJson;

  @override
  String get id;
  @override
  String get value;
  @override
  String get jenisLayanan;
  @override
  @JsonKey(ignore: true)
  _$$_PemesananTambahanCopyWith<_$_PemesananTambahan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PemesananTambahanEmptyCopyWith<$Res>
    implements $PemesananTambahanCopyWith<$Res> {
  factory _$$_PemesananTambahanEmptyCopyWith(_$_PemesananTambahanEmpty value,
          $Res Function(_$_PemesananTambahanEmpty) then) =
      __$$_PemesananTambahanEmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String value, String jenisLayanan});
}

/// @nodoc
class __$$_PemesananTambahanEmptyCopyWithImpl<$Res>
    extends _$PemesananTambahanCopyWithImpl<$Res, _$_PemesananTambahanEmpty>
    implements _$$_PemesananTambahanEmptyCopyWith<$Res> {
  __$$_PemesananTambahanEmptyCopyWithImpl(_$_PemesananTambahanEmpty _value,
      $Res Function(_$_PemesananTambahanEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? jenisLayanan = null,
  }) {
    return _then(_$_PemesananTambahanEmpty(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      jenisLayanan: null == jenisLayanan
          ? _value.jenisLayanan
          : jenisLayanan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PemesananTambahanEmpty extends _PemesananTambahanEmpty {
  const _$_PemesananTambahanEmpty(
      {this.id = "-",
      this.value = "-",
      this.jenisLayanan = "-",
      final String? $type})
      : $type = $type ?? 'empty',
        super._();

  factory _$_PemesananTambahanEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_PemesananTambahanEmptyFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final String jenisLayanan;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PemesananTambahan.empty(id: $id, value: $value, jenisLayanan: $jenisLayanan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PemesananTambahanEmpty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.jenisLayanan, jenisLayanan) ||
                other.jenisLayanan == jenisLayanan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, jenisLayanan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PemesananTambahanEmptyCopyWith<_$_PemesananTambahanEmpty> get copyWith =>
      __$$_PemesananTambahanEmptyCopyWithImpl<_$_PemesananTambahanEmpty>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String value, String jenisLayanan) $default, {
    required TResult Function(String id, String value, String jenisLayanan)
        empty,
  }) {
    return empty(id, value, jenisLayanan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String value, String jenisLayanan)? $default, {
    TResult? Function(String id, String value, String jenisLayanan)? empty,
  }) {
    return empty?.call(id, value, jenisLayanan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String value, String jenisLayanan)? $default, {
    TResult Function(String id, String value, String jenisLayanan)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(id, value, jenisLayanan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PemesananTambahan value) $default, {
    required TResult Function(_PemesananTambahanEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PemesananTambahan value)? $default, {
    TResult? Function(_PemesananTambahanEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PemesananTambahan value)? $default, {
    TResult Function(_PemesananTambahanEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PemesananTambahanEmptyToJson(
      this,
    );
  }
}

abstract class _PemesananTambahanEmpty extends PemesananTambahan {
  const factory _PemesananTambahanEmpty(
      {final String id,
      final String value,
      final String jenisLayanan}) = _$_PemesananTambahanEmpty;
  const _PemesananTambahanEmpty._() : super._();

  factory _PemesananTambahanEmpty.fromJson(Map<String, dynamic> json) =
      _$_PemesananTambahanEmpty.fromJson;

  @override
  String get id;
  @override
  String get value;
  @override
  String get jenisLayanan;
  @override
  @JsonKey(ignore: true)
  _$$_PemesananTambahanEmptyCopyWith<_$_PemesananTambahanEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}

ListPemesananTambahan _$ListPemesananTambahanFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _ListPemesananTambahan.fromJson(json);
    case 'empty':
      return _ListPemesananTambahanEmpty.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'ListPemesananTambahan',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ListPemesananTambahan {
  List<PemesananTambahan> get listTambahanGrooming =>
      throw _privateConstructorUsedError;
  List<PemesananTambahan> get listTambahanKesehatan =>
      throw _privateConstructorUsedError;
  List<PemesananTambahan> get listTambahanKonsultasi =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)
        $default, {
    required TResult Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)?
        $default, {
    TResult? Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)?
        $default, {
    TResult Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)?
        empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ListPemesananTambahan value) $default, {
    required TResult Function(_ListPemesananTambahanEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ListPemesananTambahan value)? $default, {
    TResult? Function(_ListPemesananTambahanEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ListPemesananTambahan value)? $default, {
    TResult Function(_ListPemesananTambahanEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListPemesananTambahanCopyWith<ListPemesananTambahan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPemesananTambahanCopyWith<$Res> {
  factory $ListPemesananTambahanCopyWith(ListPemesananTambahan value,
          $Res Function(ListPemesananTambahan) then) =
      _$ListPemesananTambahanCopyWithImpl<$Res, ListPemesananTambahan>;
  @useResult
  $Res call(
      {List<PemesananTambahan> listTambahanGrooming,
      List<PemesananTambahan> listTambahanKesehatan,
      List<PemesananTambahan> listTambahanKonsultasi});
}

/// @nodoc
class _$ListPemesananTambahanCopyWithImpl<$Res,
        $Val extends ListPemesananTambahan>
    implements $ListPemesananTambahanCopyWith<$Res> {
  _$ListPemesananTambahanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listTambahanGrooming = null,
    Object? listTambahanKesehatan = null,
    Object? listTambahanKonsultasi = null,
  }) {
    return _then(_value.copyWith(
      listTambahanGrooming: null == listTambahanGrooming
          ? _value.listTambahanGrooming
          : listTambahanGrooming // ignore: cast_nullable_to_non_nullable
              as List<PemesananTambahan>,
      listTambahanKesehatan: null == listTambahanKesehatan
          ? _value.listTambahanKesehatan
          : listTambahanKesehatan // ignore: cast_nullable_to_non_nullable
              as List<PemesananTambahan>,
      listTambahanKonsultasi: null == listTambahanKonsultasi
          ? _value.listTambahanKonsultasi
          : listTambahanKonsultasi // ignore: cast_nullable_to_non_nullable
              as List<PemesananTambahan>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListPemesananTambahanCopyWith<$Res>
    implements $ListPemesananTambahanCopyWith<$Res> {
  factory _$$_ListPemesananTambahanCopyWith(_$_ListPemesananTambahan value,
          $Res Function(_$_ListPemesananTambahan) then) =
      __$$_ListPemesananTambahanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PemesananTambahan> listTambahanGrooming,
      List<PemesananTambahan> listTambahanKesehatan,
      List<PemesananTambahan> listTambahanKonsultasi});
}

/// @nodoc
class __$$_ListPemesananTambahanCopyWithImpl<$Res>
    extends _$ListPemesananTambahanCopyWithImpl<$Res, _$_ListPemesananTambahan>
    implements _$$_ListPemesananTambahanCopyWith<$Res> {
  __$$_ListPemesananTambahanCopyWithImpl(_$_ListPemesananTambahan _value,
      $Res Function(_$_ListPemesananTambahan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listTambahanGrooming = null,
    Object? listTambahanKesehatan = null,
    Object? listTambahanKonsultasi = null,
  }) {
    return _then(_$_ListPemesananTambahan(
      listTambahanGrooming: null == listTambahanGrooming
          ? _value._listTambahanGrooming
          : listTambahanGrooming // ignore: cast_nullable_to_non_nullable
              as List<PemesananTambahan>,
      listTambahanKesehatan: null == listTambahanKesehatan
          ? _value._listTambahanKesehatan
          : listTambahanKesehatan // ignore: cast_nullable_to_non_nullable
              as List<PemesananTambahan>,
      listTambahanKonsultasi: null == listTambahanKonsultasi
          ? _value._listTambahanKonsultasi
          : listTambahanKonsultasi // ignore: cast_nullable_to_non_nullable
              as List<PemesananTambahan>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListPemesananTambahan extends _ListPemesananTambahan {
  const _$_ListPemesananTambahan(
      {required final List<PemesananTambahan> listTambahanGrooming,
      required final List<PemesananTambahan> listTambahanKesehatan,
      required final List<PemesananTambahan> listTambahanKonsultasi,
      final String? $type})
      : _listTambahanGrooming = listTambahanGrooming,
        _listTambahanKesehatan = listTambahanKesehatan,
        _listTambahanKonsultasi = listTambahanKonsultasi,
        $type = $type ?? 'default',
        super._();

  factory _$_ListPemesananTambahan.fromJson(Map<String, dynamic> json) =>
      _$$_ListPemesananTambahanFromJson(json);

  final List<PemesananTambahan> _listTambahanGrooming;
  @override
  List<PemesananTambahan> get listTambahanGrooming {
    if (_listTambahanGrooming is EqualUnmodifiableListView)
      return _listTambahanGrooming;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTambahanGrooming);
  }

  final List<PemesananTambahan> _listTambahanKesehatan;
  @override
  List<PemesananTambahan> get listTambahanKesehatan {
    if (_listTambahanKesehatan is EqualUnmodifiableListView)
      return _listTambahanKesehatan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTambahanKesehatan);
  }

  final List<PemesananTambahan> _listTambahanKonsultasi;
  @override
  List<PemesananTambahan> get listTambahanKonsultasi {
    if (_listTambahanKonsultasi is EqualUnmodifiableListView)
      return _listTambahanKonsultasi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTambahanKonsultasi);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ListPemesananTambahan(listTambahanGrooming: $listTambahanGrooming, listTambahanKesehatan: $listTambahanKesehatan, listTambahanKonsultasi: $listTambahanKonsultasi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListPemesananTambahan &&
            const DeepCollectionEquality()
                .equals(other._listTambahanGrooming, _listTambahanGrooming) &&
            const DeepCollectionEquality()
                .equals(other._listTambahanKesehatan, _listTambahanKesehatan) &&
            const DeepCollectionEquality().equals(
                other._listTambahanKonsultasi, _listTambahanKonsultasi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listTambahanGrooming),
      const DeepCollectionEquality().hash(_listTambahanKesehatan),
      const DeepCollectionEquality().hash(_listTambahanKonsultasi));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListPemesananTambahanCopyWith<_$_ListPemesananTambahan> get copyWith =>
      __$$_ListPemesananTambahanCopyWithImpl<_$_ListPemesananTambahan>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)
        $default, {
    required TResult Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)
        empty,
  }) {
    return $default(
        listTambahanGrooming, listTambahanKesehatan, listTambahanKonsultasi);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)?
        $default, {
    TResult? Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)?
        empty,
  }) {
    return $default?.call(
        listTambahanGrooming, listTambahanKesehatan, listTambahanKonsultasi);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)?
        $default, {
    TResult Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)?
        empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          listTambahanGrooming, listTambahanKesehatan, listTambahanKonsultasi);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ListPemesananTambahan value) $default, {
    required TResult Function(_ListPemesananTambahanEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ListPemesananTambahan value)? $default, {
    TResult? Function(_ListPemesananTambahanEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ListPemesananTambahan value)? $default, {
    TResult Function(_ListPemesananTambahanEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListPemesananTambahanToJson(
      this,
    );
  }
}

abstract class _ListPemesananTambahan extends ListPemesananTambahan {
  const factory _ListPemesananTambahan(
          {required final List<PemesananTambahan> listTambahanGrooming,
          required final List<PemesananTambahan> listTambahanKesehatan,
          required final List<PemesananTambahan> listTambahanKonsultasi}) =
      _$_ListPemesananTambahan;
  const _ListPemesananTambahan._() : super._();

  factory _ListPemesananTambahan.fromJson(Map<String, dynamic> json) =
      _$_ListPemesananTambahan.fromJson;

  @override
  List<PemesananTambahan> get listTambahanGrooming;
  @override
  List<PemesananTambahan> get listTambahanKesehatan;
  @override
  List<PemesananTambahan> get listTambahanKonsultasi;
  @override
  @JsonKey(ignore: true)
  _$$_ListPemesananTambahanCopyWith<_$_ListPemesananTambahan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ListPemesananTambahanEmptyCopyWith<$Res>
    implements $ListPemesananTambahanCopyWith<$Res> {
  factory _$$_ListPemesananTambahanEmptyCopyWith(
          _$_ListPemesananTambahanEmpty value,
          $Res Function(_$_ListPemesananTambahanEmpty) then) =
      __$$_ListPemesananTambahanEmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PemesananTambahan> listTambahanGrooming,
      List<PemesananTambahan> listTambahanKesehatan,
      List<PemesananTambahan> listTambahanKonsultasi});
}

/// @nodoc
class __$$_ListPemesananTambahanEmptyCopyWithImpl<$Res>
    extends _$ListPemesananTambahanCopyWithImpl<$Res,
        _$_ListPemesananTambahanEmpty>
    implements _$$_ListPemesananTambahanEmptyCopyWith<$Res> {
  __$$_ListPemesananTambahanEmptyCopyWithImpl(
      _$_ListPemesananTambahanEmpty _value,
      $Res Function(_$_ListPemesananTambahanEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listTambahanGrooming = null,
    Object? listTambahanKesehatan = null,
    Object? listTambahanKonsultasi = null,
  }) {
    return _then(_$_ListPemesananTambahanEmpty(
      listTambahanGrooming: null == listTambahanGrooming
          ? _value._listTambahanGrooming
          : listTambahanGrooming // ignore: cast_nullable_to_non_nullable
              as List<PemesananTambahan>,
      listTambahanKesehatan: null == listTambahanKesehatan
          ? _value._listTambahanKesehatan
          : listTambahanKesehatan // ignore: cast_nullable_to_non_nullable
              as List<PemesananTambahan>,
      listTambahanKonsultasi: null == listTambahanKonsultasi
          ? _value._listTambahanKonsultasi
          : listTambahanKonsultasi // ignore: cast_nullable_to_non_nullable
              as List<PemesananTambahan>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListPemesananTambahanEmpty extends _ListPemesananTambahanEmpty {
  const _$_ListPemesananTambahanEmpty(
      {final List<PemesananTambahan> listTambahanGrooming = const [],
      final List<PemesananTambahan> listTambahanKesehatan = const [],
      final List<PemesananTambahan> listTambahanKonsultasi = const [],
      final String? $type})
      : _listTambahanGrooming = listTambahanGrooming,
        _listTambahanKesehatan = listTambahanKesehatan,
        _listTambahanKonsultasi = listTambahanKonsultasi,
        $type = $type ?? 'empty',
        super._();

  factory _$_ListPemesananTambahanEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_ListPemesananTambahanEmptyFromJson(json);

  final List<PemesananTambahan> _listTambahanGrooming;
  @override
  @JsonKey()
  List<PemesananTambahan> get listTambahanGrooming {
    if (_listTambahanGrooming is EqualUnmodifiableListView)
      return _listTambahanGrooming;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTambahanGrooming);
  }

  final List<PemesananTambahan> _listTambahanKesehatan;
  @override
  @JsonKey()
  List<PemesananTambahan> get listTambahanKesehatan {
    if (_listTambahanKesehatan is EqualUnmodifiableListView)
      return _listTambahanKesehatan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTambahanKesehatan);
  }

  final List<PemesananTambahan> _listTambahanKonsultasi;
  @override
  @JsonKey()
  List<PemesananTambahan> get listTambahanKonsultasi {
    if (_listTambahanKonsultasi is EqualUnmodifiableListView)
      return _listTambahanKonsultasi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTambahanKonsultasi);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ListPemesananTambahan.empty(listTambahanGrooming: $listTambahanGrooming, listTambahanKesehatan: $listTambahanKesehatan, listTambahanKonsultasi: $listTambahanKonsultasi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListPemesananTambahanEmpty &&
            const DeepCollectionEquality()
                .equals(other._listTambahanGrooming, _listTambahanGrooming) &&
            const DeepCollectionEquality()
                .equals(other._listTambahanKesehatan, _listTambahanKesehatan) &&
            const DeepCollectionEquality().equals(
                other._listTambahanKonsultasi, _listTambahanKonsultasi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listTambahanGrooming),
      const DeepCollectionEquality().hash(_listTambahanKesehatan),
      const DeepCollectionEquality().hash(_listTambahanKonsultasi));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListPemesananTambahanEmptyCopyWith<_$_ListPemesananTambahanEmpty>
      get copyWith => __$$_ListPemesananTambahanEmptyCopyWithImpl<
          _$_ListPemesananTambahanEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)
        $default, {
    required TResult Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)
        empty,
  }) {
    return empty(
        listTambahanGrooming, listTambahanKesehatan, listTambahanKonsultasi);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)?
        $default, {
    TResult? Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)?
        empty,
  }) {
    return empty?.call(
        listTambahanGrooming, listTambahanKesehatan, listTambahanKonsultasi);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)?
        $default, {
    TResult Function(
            List<PemesananTambahan> listTambahanGrooming,
            List<PemesananTambahan> listTambahanKesehatan,
            List<PemesananTambahan> listTambahanKonsultasi)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(
          listTambahanGrooming, listTambahanKesehatan, listTambahanKonsultasi);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ListPemesananTambahan value) $default, {
    required TResult Function(_ListPemesananTambahanEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ListPemesananTambahan value)? $default, {
    TResult? Function(_ListPemesananTambahanEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ListPemesananTambahan value)? $default, {
    TResult Function(_ListPemesananTambahanEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListPemesananTambahanEmptyToJson(
      this,
    );
  }
}

abstract class _ListPemesananTambahanEmpty extends ListPemesananTambahan {
  const factory _ListPemesananTambahanEmpty(
          {final List<PemesananTambahan> listTambahanGrooming,
          final List<PemesananTambahan> listTambahanKesehatan,
          final List<PemesananTambahan> listTambahanKonsultasi}) =
      _$_ListPemesananTambahanEmpty;
  const _ListPemesananTambahanEmpty._() : super._();

  factory _ListPemesananTambahanEmpty.fromJson(Map<String, dynamic> json) =
      _$_ListPemesananTambahanEmpty.fromJson;

  @override
  List<PemesananTambahan> get listTambahanGrooming;
  @override
  List<PemesananTambahan> get listTambahanKesehatan;
  @override
  List<PemesananTambahan> get listTambahanKonsultasi;
  @override
  @JsonKey(ignore: true)
  _$$_ListPemesananTambahanEmptyCopyWith<_$_ListPemesananTambahanEmpty>
      get copyWith => throw _privateConstructorUsedError;
}
