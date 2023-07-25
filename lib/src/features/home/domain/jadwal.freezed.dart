// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jadwal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Jadwal _$JadwalFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _Jadwal.fromJson(json);
    case 'empty':
      return _JadwalEmpty.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Jadwal',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Jadwal {
  Data get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Data data) $default, {
    required TResult Function(Data data) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Data data)? $default, {
    TResult? Function(Data data)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Data data)? $default, {
    TResult Function(Data data)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Jadwal value) $default, {
    required TResult Function(_JadwalEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Jadwal value)? $default, {
    TResult? Function(_JadwalEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Jadwal value)? $default, {
    TResult Function(_JadwalEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JadwalCopyWith<Jadwal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JadwalCopyWith<$Res> {
  factory $JadwalCopyWith(Jadwal value, $Res Function(Jadwal) then) =
      _$JadwalCopyWithImpl<$Res, Jadwal>;
  @useResult
  $Res call({Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$JadwalCopyWithImpl<$Res, $Val extends Jadwal>
    implements $JadwalCopyWith<$Res> {
  _$JadwalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JadwalCopyWith<$Res> implements $JadwalCopyWith<$Res> {
  factory _$$_JadwalCopyWith(_$_Jadwal value, $Res Function(_$_Jadwal) then) =
      __$$_JadwalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_JadwalCopyWithImpl<$Res>
    extends _$JadwalCopyWithImpl<$Res, _$_Jadwal>
    implements _$$_JadwalCopyWith<$Res> {
  __$$_JadwalCopyWithImpl(_$_Jadwal _value, $Res Function(_$_Jadwal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Jadwal(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Jadwal implements _Jadwal {
  const _$_Jadwal({required this.data, final String? $type})
      : $type = $type ?? 'default';

  factory _$_Jadwal.fromJson(Map<String, dynamic> json) =>
      _$$_JadwalFromJson(json);

  @override
  final Data data;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Jadwal(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Jadwal &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JadwalCopyWith<_$_Jadwal> get copyWith =>
      __$$_JadwalCopyWithImpl<_$_Jadwal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Data data) $default, {
    required TResult Function(Data data) empty,
  }) {
    return $default(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Data data)? $default, {
    TResult? Function(Data data)? empty,
  }) {
    return $default?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Data data)? $default, {
    TResult Function(Data data)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Jadwal value) $default, {
    required TResult Function(_JadwalEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Jadwal value)? $default, {
    TResult? Function(_JadwalEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Jadwal value)? $default, {
    TResult Function(_JadwalEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_JadwalToJson(
      this,
    );
  }
}

abstract class _Jadwal implements Jadwal {
  const factory _Jadwal({required final Data data}) = _$_Jadwal;

  factory _Jadwal.fromJson(Map<String, dynamic> json) = _$_Jadwal.fromJson;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$_JadwalCopyWith<_$_Jadwal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_JadwalEmptyCopyWith<$Res> implements $JadwalCopyWith<$Res> {
  factory _$$_JadwalEmptyCopyWith(
          _$_JadwalEmpty value, $Res Function(_$_JadwalEmpty) then) =
      __$$_JadwalEmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_JadwalEmptyCopyWithImpl<$Res>
    extends _$JadwalCopyWithImpl<$Res, _$_JadwalEmpty>
    implements _$$_JadwalEmptyCopyWith<$Res> {
  __$$_JadwalEmptyCopyWithImpl(
      _$_JadwalEmpty _value, $Res Function(_$_JadwalEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_JadwalEmpty(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JadwalEmpty implements _JadwalEmpty {
  const _$_JadwalEmpty(
      {this.data = const Data(
          layananGrouming: [], layananKesehatan: [], layananKonsultasi: []),
      final String? $type})
      : $type = $type ?? 'empty';

  factory _$_JadwalEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_JadwalEmptyFromJson(json);

  @override
  @JsonKey()
  final Data data;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Jadwal.empty(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JadwalEmpty &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JadwalEmptyCopyWith<_$_JadwalEmpty> get copyWith =>
      __$$_JadwalEmptyCopyWithImpl<_$_JadwalEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Data data) $default, {
    required TResult Function(Data data) empty,
  }) {
    return empty(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Data data)? $default, {
    TResult? Function(Data data)? empty,
  }) {
    return empty?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Data data)? $default, {
    TResult Function(Data data)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Jadwal value) $default, {
    required TResult Function(_JadwalEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Jadwal value)? $default, {
    TResult? Function(_JadwalEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Jadwal value)? $default, {
    TResult Function(_JadwalEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_JadwalEmptyToJson(
      this,
    );
  }
}

abstract class _JadwalEmpty implements Jadwal {
  const factory _JadwalEmpty({final Data data}) = _$_JadwalEmpty;

  factory _JadwalEmpty.fromJson(Map<String, dynamic> json) =
      _$_JadwalEmpty.fromJson;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$_JadwalEmptyCopyWith<_$_JadwalEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<Layanan> get layananGrouming => throw _privateConstructorUsedError;
  List<Layanan> get layananKesehatan => throw _privateConstructorUsedError;
  List<Layanan> get layananKonsultasi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {List<Layanan> layananGrouming,
      List<Layanan> layananKesehatan,
      List<Layanan> layananKonsultasi});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layananGrouming = null,
    Object? layananKesehatan = null,
    Object? layananKonsultasi = null,
  }) {
    return _then(_value.copyWith(
      layananGrouming: null == layananGrouming
          ? _value.layananGrouming
          : layananGrouming // ignore: cast_nullable_to_non_nullable
              as List<Layanan>,
      layananKesehatan: null == layananKesehatan
          ? _value.layananKesehatan
          : layananKesehatan // ignore: cast_nullable_to_non_nullable
              as List<Layanan>,
      layananKonsultasi: null == layananKonsultasi
          ? _value.layananKonsultasi
          : layananKonsultasi // ignore: cast_nullable_to_non_nullable
              as List<Layanan>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Layanan> layananGrouming,
      List<Layanan> layananKesehatan,
      List<Layanan> layananKonsultasi});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layananGrouming = null,
    Object? layananKesehatan = null,
    Object? layananKonsultasi = null,
  }) {
    return _then(_$_Data(
      layananGrouming: null == layananGrouming
          ? _value._layananGrouming
          : layananGrouming // ignore: cast_nullable_to_non_nullable
              as List<Layanan>,
      layananKesehatan: null == layananKesehatan
          ? _value._layananKesehatan
          : layananKesehatan // ignore: cast_nullable_to_non_nullable
              as List<Layanan>,
      layananKonsultasi: null == layananKonsultasi
          ? _value._layananKonsultasi
          : layananKonsultasi // ignore: cast_nullable_to_non_nullable
              as List<Layanan>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required final List<Layanan> layananGrouming,
      required final List<Layanan> layananKesehatan,
      required final List<Layanan> layananKonsultasi})
      : _layananGrouming = layananGrouming,
        _layananKesehatan = layananKesehatan,
        _layananKonsultasi = layananKonsultasi;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  final List<Layanan> _layananGrouming;
  @override
  List<Layanan> get layananGrouming {
    if (_layananGrouming is EqualUnmodifiableListView) return _layananGrouming;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_layananGrouming);
  }

  final List<Layanan> _layananKesehatan;
  @override
  List<Layanan> get layananKesehatan {
    if (_layananKesehatan is EqualUnmodifiableListView)
      return _layananKesehatan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_layananKesehatan);
  }

  final List<Layanan> _layananKonsultasi;
  @override
  List<Layanan> get layananKonsultasi {
    if (_layananKonsultasi is EqualUnmodifiableListView)
      return _layananKonsultasi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_layananKonsultasi);
  }

  @override
  String toString() {
    return 'Data(layananGrouming: $layananGrouming, layananKesehatan: $layananKesehatan, layananKonsultasi: $layananKonsultasi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
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
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final List<Layanan> layananGrouming,
      required final List<Layanan> layananKesehatan,
      required final List<Layanan> layananKonsultasi}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<Layanan> get layananGrouming;
  @override
  List<Layanan> get layananKesehatan;
  @override
  List<Layanan> get layananKonsultasi;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Layanan _$LayananFromJson(Map<String, dynamic> json) {
  return _Layanan.fromJson(json);
}

/// @nodoc
mixin _$Layanan {
  String get jam => throw _privateConstructorUsedError;
  String get hari => throw _privateConstructorUsedError;
  String get jenisLayanan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LayananCopyWith<Layanan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayananCopyWith<$Res> {
  factory $LayananCopyWith(Layanan value, $Res Function(Layanan) then) =
      _$LayananCopyWithImpl<$Res, Layanan>;
  @useResult
  $Res call({String jam, String hari, String jenisLayanan});
}

/// @nodoc
class _$LayananCopyWithImpl<$Res, $Val extends Layanan>
    implements $LayananCopyWith<$Res> {
  _$LayananCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jam = null,
    Object? hari = null,
    Object? jenisLayanan = null,
  }) {
    return _then(_value.copyWith(
      jam: null == jam
          ? _value.jam
          : jam // ignore: cast_nullable_to_non_nullable
              as String,
      hari: null == hari
          ? _value.hari
          : hari // ignore: cast_nullable_to_non_nullable
              as String,
      jenisLayanan: null == jenisLayanan
          ? _value.jenisLayanan
          : jenisLayanan // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LayananCopyWith<$Res> implements $LayananCopyWith<$Res> {
  factory _$$_LayananCopyWith(
          _$_Layanan value, $Res Function(_$_Layanan) then) =
      __$$_LayananCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jam, String hari, String jenisLayanan});
}

/// @nodoc
class __$$_LayananCopyWithImpl<$Res>
    extends _$LayananCopyWithImpl<$Res, _$_Layanan>
    implements _$$_LayananCopyWith<$Res> {
  __$$_LayananCopyWithImpl(_$_Layanan _value, $Res Function(_$_Layanan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jam = null,
    Object? hari = null,
    Object? jenisLayanan = null,
  }) {
    return _then(_$_Layanan(
      jam: null == jam
          ? _value.jam
          : jam // ignore: cast_nullable_to_non_nullable
              as String,
      hari: null == hari
          ? _value.hari
          : hari // ignore: cast_nullable_to_non_nullable
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
class _$_Layanan implements _Layanan {
  const _$_Layanan(
      {required this.jam, required this.hari, required this.jenisLayanan});

  factory _$_Layanan.fromJson(Map<String, dynamic> json) =>
      _$$_LayananFromJson(json);

  @override
  final String jam;
  @override
  final String hari;
  @override
  final String jenisLayanan;

  @override
  String toString() {
    return 'Layanan(jam: $jam, hari: $hari, jenisLayanan: $jenisLayanan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Layanan &&
            (identical(other.jam, jam) || other.jam == jam) &&
            (identical(other.hari, hari) || other.hari == hari) &&
            (identical(other.jenisLayanan, jenisLayanan) ||
                other.jenisLayanan == jenisLayanan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jam, hari, jenisLayanan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LayananCopyWith<_$_Layanan> get copyWith =>
      __$$_LayananCopyWithImpl<_$_Layanan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LayananToJson(
      this,
    );
  }
}

abstract class _Layanan implements Layanan {
  const factory _Layanan(
      {required final String jam,
      required final String hari,
      required final String jenisLayanan}) = _$_Layanan;

  factory _Layanan.fromJson(Map<String, dynamic> json) = _$_Layanan.fromJson;

  @override
  String get jam;
  @override
  String get hari;
  @override
  String get jenisLayanan;
  @override
  @JsonKey(ignore: true)
  _$$_LayananCopyWith<_$_Layanan> get copyWith =>
      throw _privateConstructorUsedError;
}
