// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pemesanan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pemesanan _$PemesananFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _Pemesanan.fromJson(json);
    case 'empty':
      return _PemesananEmpty.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Pemesanan',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Pemesanan {
  String get id => throw _privateConstructorUsedError;
  String get jenisLayanan => throw _privateConstructorUsedError;
  String get namaHewan => throw _privateConstructorUsedError;
  String get kategoriHewan => throw _privateConstructorUsedError;
  String get umurHewan => throw _privateConstructorUsedError;
  String get jenisKelaminHewan => throw _privateConstructorUsedError;
  String get keluhan => throw _privateConstructorUsedError;
  String get hasilKonsultasi => throw _privateConstructorUsedError;
  String get tanggal => throw _privateConstructorUsedError;
  String get jam => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<PemesananTambahan> get pemesananTambahan =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            List<PemesananTambahan> pemesananTambahan)
        $default, {
    required TResult Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            String tambahanPemesanan,
            List<PemesananTambahan> pemesananTambahan)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            List<PemesananTambahan> pemesananTambahan)?
        $default, {
    TResult? Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            String tambahanPemesanan,
            List<PemesananTambahan> pemesananTambahan)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            List<PemesananTambahan> pemesananTambahan)?
        $default, {
    TResult Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            String tambahanPemesanan,
            List<PemesananTambahan> pemesananTambahan)?
        empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Pemesanan value) $default, {
    required TResult Function(_PemesananEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Pemesanan value)? $default, {
    TResult? Function(_PemesananEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Pemesanan value)? $default, {
    TResult Function(_PemesananEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PemesananCopyWith<Pemesanan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PemesananCopyWith<$Res> {
  factory $PemesananCopyWith(Pemesanan value, $Res Function(Pemesanan) then) =
      _$PemesananCopyWithImpl<$Res, Pemesanan>;
  @useResult
  $Res call(
      {String id,
      String jenisLayanan,
      String namaHewan,
      String kategoriHewan,
      String umurHewan,
      String jenisKelaminHewan,
      String keluhan,
      String hasilKonsultasi,
      String tanggal,
      String jam,
      String status,
      List<PemesananTambahan> pemesananTambahan});
}

/// @nodoc
class _$PemesananCopyWithImpl<$Res, $Val extends Pemesanan>
    implements $PemesananCopyWith<$Res> {
  _$PemesananCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jenisLayanan = null,
    Object? namaHewan = null,
    Object? kategoriHewan = null,
    Object? umurHewan = null,
    Object? jenisKelaminHewan = null,
    Object? keluhan = null,
    Object? hasilKonsultasi = null,
    Object? tanggal = null,
    Object? jam = null,
    Object? status = null,
    Object? pemesananTambahan = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      jenisLayanan: null == jenisLayanan
          ? _value.jenisLayanan
          : jenisLayanan // ignore: cast_nullable_to_non_nullable
              as String,
      namaHewan: null == namaHewan
          ? _value.namaHewan
          : namaHewan // ignore: cast_nullable_to_non_nullable
              as String,
      kategoriHewan: null == kategoriHewan
          ? _value.kategoriHewan
          : kategoriHewan // ignore: cast_nullable_to_non_nullable
              as String,
      umurHewan: null == umurHewan
          ? _value.umurHewan
          : umurHewan // ignore: cast_nullable_to_non_nullable
              as String,
      jenisKelaminHewan: null == jenisKelaminHewan
          ? _value.jenisKelaminHewan
          : jenisKelaminHewan // ignore: cast_nullable_to_non_nullable
              as String,
      keluhan: null == keluhan
          ? _value.keluhan
          : keluhan // ignore: cast_nullable_to_non_nullable
              as String,
      hasilKonsultasi: null == hasilKonsultasi
          ? _value.hasilKonsultasi
          : hasilKonsultasi // ignore: cast_nullable_to_non_nullable
              as String,
      tanggal: null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String,
      jam: null == jam
          ? _value.jam
          : jam // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      pemesananTambahan: null == pemesananTambahan
          ? _value.pemesananTambahan
          : pemesananTambahan // ignore: cast_nullable_to_non_nullable
              as List<PemesananTambahan>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PemesananCopyWith<$Res> implements $PemesananCopyWith<$Res> {
  factory _$$_PemesananCopyWith(
          _$_Pemesanan value, $Res Function(_$_Pemesanan) then) =
      __$$_PemesananCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String jenisLayanan,
      String namaHewan,
      String kategoriHewan,
      String umurHewan,
      String jenisKelaminHewan,
      String keluhan,
      String hasilKonsultasi,
      String tanggal,
      String jam,
      String status,
      List<PemesananTambahan> pemesananTambahan});
}

/// @nodoc
class __$$_PemesananCopyWithImpl<$Res>
    extends _$PemesananCopyWithImpl<$Res, _$_Pemesanan>
    implements _$$_PemesananCopyWith<$Res> {
  __$$_PemesananCopyWithImpl(
      _$_Pemesanan _value, $Res Function(_$_Pemesanan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jenisLayanan = null,
    Object? namaHewan = null,
    Object? kategoriHewan = null,
    Object? umurHewan = null,
    Object? jenisKelaminHewan = null,
    Object? keluhan = null,
    Object? hasilKonsultasi = null,
    Object? tanggal = null,
    Object? jam = null,
    Object? status = null,
    Object? pemesananTambahan = null,
  }) {
    return _then(_$_Pemesanan(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      jenisLayanan: null == jenisLayanan
          ? _value.jenisLayanan
          : jenisLayanan // ignore: cast_nullable_to_non_nullable
              as String,
      namaHewan: null == namaHewan
          ? _value.namaHewan
          : namaHewan // ignore: cast_nullable_to_non_nullable
              as String,
      kategoriHewan: null == kategoriHewan
          ? _value.kategoriHewan
          : kategoriHewan // ignore: cast_nullable_to_non_nullable
              as String,
      umurHewan: null == umurHewan
          ? _value.umurHewan
          : umurHewan // ignore: cast_nullable_to_non_nullable
              as String,
      jenisKelaminHewan: null == jenisKelaminHewan
          ? _value.jenisKelaminHewan
          : jenisKelaminHewan // ignore: cast_nullable_to_non_nullable
              as String,
      keluhan: null == keluhan
          ? _value.keluhan
          : keluhan // ignore: cast_nullable_to_non_nullable
              as String,
      hasilKonsultasi: null == hasilKonsultasi
          ? _value.hasilKonsultasi
          : hasilKonsultasi // ignore: cast_nullable_to_non_nullable
              as String,
      tanggal: null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String,
      jam: null == jam
          ? _value.jam
          : jam // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      pemesananTambahan: null == pemesananTambahan
          ? _value._pemesananTambahan
          : pemesananTambahan // ignore: cast_nullable_to_non_nullable
              as List<PemesananTambahan>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pemesanan extends _Pemesanan {
  _$_Pemesanan(
      {required this.id,
      required this.jenisLayanan,
      required this.namaHewan,
      required this.kategoriHewan,
      required this.umurHewan,
      required this.jenisKelaminHewan,
      required this.keluhan,
      required this.hasilKonsultasi,
      required this.tanggal,
      required this.jam,
      required this.status,
      required final List<PemesananTambahan> pemesananTambahan,
      final String? $type})
      : _pemesananTambahan = pemesananTambahan,
        $type = $type ?? 'default',
        super._();

  factory _$_Pemesanan.fromJson(Map<String, dynamic> json) =>
      _$$_PemesananFromJson(json);

  @override
  final String id;
  @override
  final String jenisLayanan;
  @override
  final String namaHewan;
  @override
  final String kategoriHewan;
  @override
  final String umurHewan;
  @override
  final String jenisKelaminHewan;
  @override
  final String keluhan;
  @override
  final String hasilKonsultasi;
  @override
  final String tanggal;
  @override
  final String jam;
  @override
  final String status;
  final List<PemesananTambahan> _pemesananTambahan;
  @override
  List<PemesananTambahan> get pemesananTambahan {
    if (_pemesananTambahan is EqualUnmodifiableListView)
      return _pemesananTambahan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pemesananTambahan);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Pemesanan(id: $id, jenisLayanan: $jenisLayanan, namaHewan: $namaHewan, kategoriHewan: $kategoriHewan, umurHewan: $umurHewan, jenisKelaminHewan: $jenisKelaminHewan, keluhan: $keluhan, hasilKonsultasi: $hasilKonsultasi, tanggal: $tanggal, jam: $jam, status: $status, pemesananTambahan: $pemesananTambahan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pemesanan &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jenisLayanan, jenisLayanan) ||
                other.jenisLayanan == jenisLayanan) &&
            (identical(other.namaHewan, namaHewan) ||
                other.namaHewan == namaHewan) &&
            (identical(other.kategoriHewan, kategoriHewan) ||
                other.kategoriHewan == kategoriHewan) &&
            (identical(other.umurHewan, umurHewan) ||
                other.umurHewan == umurHewan) &&
            (identical(other.jenisKelaminHewan, jenisKelaminHewan) ||
                other.jenisKelaminHewan == jenisKelaminHewan) &&
            (identical(other.keluhan, keluhan) || other.keluhan == keluhan) &&
            (identical(other.hasilKonsultasi, hasilKonsultasi) ||
                other.hasilKonsultasi == hasilKonsultasi) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.jam, jam) || other.jam == jam) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._pemesananTambahan, _pemesananTambahan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      jenisLayanan,
      namaHewan,
      kategoriHewan,
      umurHewan,
      jenisKelaminHewan,
      keluhan,
      hasilKonsultasi,
      tanggal,
      jam,
      status,
      const DeepCollectionEquality().hash(_pemesananTambahan));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PemesananCopyWith<_$_Pemesanan> get copyWith =>
      __$$_PemesananCopyWithImpl<_$_Pemesanan>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            List<PemesananTambahan> pemesananTambahan)
        $default, {
    required TResult Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            String tambahanPemesanan,
            List<PemesananTambahan> pemesananTambahan)
        empty,
  }) {
    return $default(
        id,
        jenisLayanan,
        namaHewan,
        kategoriHewan,
        umurHewan,
        jenisKelaminHewan,
        keluhan,
        hasilKonsultasi,
        tanggal,
        jam,
        status,
        pemesananTambahan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            List<PemesananTambahan> pemesananTambahan)?
        $default, {
    TResult? Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            String tambahanPemesanan,
            List<PemesananTambahan> pemesananTambahan)?
        empty,
  }) {
    return $default?.call(
        id,
        jenisLayanan,
        namaHewan,
        kategoriHewan,
        umurHewan,
        jenisKelaminHewan,
        keluhan,
        hasilKonsultasi,
        tanggal,
        jam,
        status,
        pemesananTambahan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            List<PemesananTambahan> pemesananTambahan)?
        $default, {
    TResult Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            String tambahanPemesanan,
            List<PemesananTambahan> pemesananTambahan)?
        empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          id,
          jenisLayanan,
          namaHewan,
          kategoriHewan,
          umurHewan,
          jenisKelaminHewan,
          keluhan,
          hasilKonsultasi,
          tanggal,
          jam,
          status,
          pemesananTambahan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Pemesanan value) $default, {
    required TResult Function(_PemesananEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Pemesanan value)? $default, {
    TResult? Function(_PemesananEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Pemesanan value)? $default, {
    TResult Function(_PemesananEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PemesananToJson(
      this,
    );
  }
}

abstract class _Pemesanan extends Pemesanan {
  factory _Pemesanan(
      {required final String id,
      required final String jenisLayanan,
      required final String namaHewan,
      required final String kategoriHewan,
      required final String umurHewan,
      required final String jenisKelaminHewan,
      required final String keluhan,
      required final String hasilKonsultasi,
      required final String tanggal,
      required final String jam,
      required final String status,
      required final List<PemesananTambahan> pemesananTambahan}) = _$_Pemesanan;
  _Pemesanan._() : super._();

  factory _Pemesanan.fromJson(Map<String, dynamic> json) =
      _$_Pemesanan.fromJson;

  @override
  String get id;
  @override
  String get jenisLayanan;
  @override
  String get namaHewan;
  @override
  String get kategoriHewan;
  @override
  String get umurHewan;
  @override
  String get jenisKelaminHewan;
  @override
  String get keluhan;
  @override
  String get hasilKonsultasi;
  @override
  String get tanggal;
  @override
  String get jam;
  @override
  String get status;
  @override
  List<PemesananTambahan> get pemesananTambahan;
  @override
  @JsonKey(ignore: true)
  _$$_PemesananCopyWith<_$_Pemesanan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PemesananEmptyCopyWith<$Res>
    implements $PemesananCopyWith<$Res> {
  factory _$$_PemesananEmptyCopyWith(
          _$_PemesananEmpty value, $Res Function(_$_PemesananEmpty) then) =
      __$$_PemesananEmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String jenisLayanan,
      String namaHewan,
      String kategoriHewan,
      String umurHewan,
      String jenisKelaminHewan,
      String keluhan,
      String hasilKonsultasi,
      String tanggal,
      String jam,
      String status,
      String tambahanPemesanan,
      List<PemesananTambahan> pemesananTambahan});
}

/// @nodoc
class __$$_PemesananEmptyCopyWithImpl<$Res>
    extends _$PemesananCopyWithImpl<$Res, _$_PemesananEmpty>
    implements _$$_PemesananEmptyCopyWith<$Res> {
  __$$_PemesananEmptyCopyWithImpl(
      _$_PemesananEmpty _value, $Res Function(_$_PemesananEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jenisLayanan = null,
    Object? namaHewan = null,
    Object? kategoriHewan = null,
    Object? umurHewan = null,
    Object? jenisKelaminHewan = null,
    Object? keluhan = null,
    Object? hasilKonsultasi = null,
    Object? tanggal = null,
    Object? jam = null,
    Object? status = null,
    Object? tambahanPemesanan = null,
    Object? pemesananTambahan = null,
  }) {
    return _then(_$_PemesananEmpty(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      jenisLayanan: null == jenisLayanan
          ? _value.jenisLayanan
          : jenisLayanan // ignore: cast_nullable_to_non_nullable
              as String,
      namaHewan: null == namaHewan
          ? _value.namaHewan
          : namaHewan // ignore: cast_nullable_to_non_nullable
              as String,
      kategoriHewan: null == kategoriHewan
          ? _value.kategoriHewan
          : kategoriHewan // ignore: cast_nullable_to_non_nullable
              as String,
      umurHewan: null == umurHewan
          ? _value.umurHewan
          : umurHewan // ignore: cast_nullable_to_non_nullable
              as String,
      jenisKelaminHewan: null == jenisKelaminHewan
          ? _value.jenisKelaminHewan
          : jenisKelaminHewan // ignore: cast_nullable_to_non_nullable
              as String,
      keluhan: null == keluhan
          ? _value.keluhan
          : keluhan // ignore: cast_nullable_to_non_nullable
              as String,
      hasilKonsultasi: null == hasilKonsultasi
          ? _value.hasilKonsultasi
          : hasilKonsultasi // ignore: cast_nullable_to_non_nullable
              as String,
      tanggal: null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String,
      jam: null == jam
          ? _value.jam
          : jam // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tambahanPemesanan: null == tambahanPemesanan
          ? _value.tambahanPemesanan
          : tambahanPemesanan // ignore: cast_nullable_to_non_nullable
              as String,
      pemesananTambahan: null == pemesananTambahan
          ? _value._pemesananTambahan
          : pemesananTambahan // ignore: cast_nullable_to_non_nullable
              as List<PemesananTambahan>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PemesananEmpty extends _PemesananEmpty {
  const _$_PemesananEmpty(
      {this.id = "-",
      this.jenisLayanan = "-",
      this.namaHewan = "-",
      this.kategoriHewan = "-",
      this.umurHewan = "-",
      this.jenisKelaminHewan = "-",
      this.keluhan = "-",
      this.hasilKonsultasi = "-",
      this.tanggal = "-",
      this.jam = "-",
      this.status = "-",
      this.tambahanPemesanan = "-",
      final List<PemesananTambahan> pemesananTambahan = const [],
      final String? $type})
      : _pemesananTambahan = pemesananTambahan,
        $type = $type ?? 'empty',
        super._();

  factory _$_PemesananEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_PemesananEmptyFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String jenisLayanan;
  @override
  @JsonKey()
  final String namaHewan;
  @override
  @JsonKey()
  final String kategoriHewan;
  @override
  @JsonKey()
  final String umurHewan;
  @override
  @JsonKey()
  final String jenisKelaminHewan;
  @override
  @JsonKey()
  final String keluhan;
  @override
  @JsonKey()
  final String hasilKonsultasi;
  @override
  @JsonKey()
  final String tanggal;
  @override
  @JsonKey()
  final String jam;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String tambahanPemesanan;
  final List<PemesananTambahan> _pemesananTambahan;
  @override
  @JsonKey()
  List<PemesananTambahan> get pemesananTambahan {
    if (_pemesananTambahan is EqualUnmodifiableListView)
      return _pemesananTambahan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pemesananTambahan);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Pemesanan.empty(id: $id, jenisLayanan: $jenisLayanan, namaHewan: $namaHewan, kategoriHewan: $kategoriHewan, umurHewan: $umurHewan, jenisKelaminHewan: $jenisKelaminHewan, keluhan: $keluhan, hasilKonsultasi: $hasilKonsultasi, tanggal: $tanggal, jam: $jam, status: $status, tambahanPemesanan: $tambahanPemesanan, pemesananTambahan: $pemesananTambahan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PemesananEmpty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jenisLayanan, jenisLayanan) ||
                other.jenisLayanan == jenisLayanan) &&
            (identical(other.namaHewan, namaHewan) ||
                other.namaHewan == namaHewan) &&
            (identical(other.kategoriHewan, kategoriHewan) ||
                other.kategoriHewan == kategoriHewan) &&
            (identical(other.umurHewan, umurHewan) ||
                other.umurHewan == umurHewan) &&
            (identical(other.jenisKelaminHewan, jenisKelaminHewan) ||
                other.jenisKelaminHewan == jenisKelaminHewan) &&
            (identical(other.keluhan, keluhan) || other.keluhan == keluhan) &&
            (identical(other.hasilKonsultasi, hasilKonsultasi) ||
                other.hasilKonsultasi == hasilKonsultasi) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.jam, jam) || other.jam == jam) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tambahanPemesanan, tambahanPemesanan) ||
                other.tambahanPemesanan == tambahanPemesanan) &&
            const DeepCollectionEquality()
                .equals(other._pemesananTambahan, _pemesananTambahan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      jenisLayanan,
      namaHewan,
      kategoriHewan,
      umurHewan,
      jenisKelaminHewan,
      keluhan,
      hasilKonsultasi,
      tanggal,
      jam,
      status,
      tambahanPemesanan,
      const DeepCollectionEquality().hash(_pemesananTambahan));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PemesananEmptyCopyWith<_$_PemesananEmpty> get copyWith =>
      __$$_PemesananEmptyCopyWithImpl<_$_PemesananEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            List<PemesananTambahan> pemesananTambahan)
        $default, {
    required TResult Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            String tambahanPemesanan,
            List<PemesananTambahan> pemesananTambahan)
        empty,
  }) {
    return empty(
        id,
        jenisLayanan,
        namaHewan,
        kategoriHewan,
        umurHewan,
        jenisKelaminHewan,
        keluhan,
        hasilKonsultasi,
        tanggal,
        jam,
        status,
        tambahanPemesanan,
        pemesananTambahan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            List<PemesananTambahan> pemesananTambahan)?
        $default, {
    TResult? Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            String tambahanPemesanan,
            List<PemesananTambahan> pemesananTambahan)?
        empty,
  }) {
    return empty?.call(
        id,
        jenisLayanan,
        namaHewan,
        kategoriHewan,
        umurHewan,
        jenisKelaminHewan,
        keluhan,
        hasilKonsultasi,
        tanggal,
        jam,
        status,
        tambahanPemesanan,
        pemesananTambahan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            List<PemesananTambahan> pemesananTambahan)?
        $default, {
    TResult Function(
            String id,
            String jenisLayanan,
            String namaHewan,
            String kategoriHewan,
            String umurHewan,
            String jenisKelaminHewan,
            String keluhan,
            String hasilKonsultasi,
            String tanggal,
            String jam,
            String status,
            String tambahanPemesanan,
            List<PemesananTambahan> pemesananTambahan)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(
          id,
          jenisLayanan,
          namaHewan,
          kategoriHewan,
          umurHewan,
          jenisKelaminHewan,
          keluhan,
          hasilKonsultasi,
          tanggal,
          jam,
          status,
          tambahanPemesanan,
          pemesananTambahan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Pemesanan value) $default, {
    required TResult Function(_PemesananEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Pemesanan value)? $default, {
    TResult? Function(_PemesananEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Pemesanan value)? $default, {
    TResult Function(_PemesananEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_PemesananEmptyToJson(
      this,
    );
  }
}

abstract class _PemesananEmpty extends Pemesanan {
  const factory _PemesananEmpty(
      {final String id,
      final String jenisLayanan,
      final String namaHewan,
      final String kategoriHewan,
      final String umurHewan,
      final String jenisKelaminHewan,
      final String keluhan,
      final String hasilKonsultasi,
      final String tanggal,
      final String jam,
      final String status,
      final String tambahanPemesanan,
      final List<PemesananTambahan> pemesananTambahan}) = _$_PemesananEmpty;
  const _PemesananEmpty._() : super._();

  factory _PemesananEmpty.fromJson(Map<String, dynamic> json) =
      _$_PemesananEmpty.fromJson;

  @override
  String get id;
  @override
  String get jenisLayanan;
  @override
  String get namaHewan;
  @override
  String get kategoriHewan;
  @override
  String get umurHewan;
  @override
  String get jenisKelaminHewan;
  @override
  String get keluhan;
  @override
  String get hasilKonsultasi;
  @override
  String get tanggal;
  @override
  String get jam;
  @override
  String get status;
  String get tambahanPemesanan;
  @override
  List<PemesananTambahan> get pemesananTambahan;
  @override
  @JsonKey(ignore: true)
  _$$_PemesananEmptyCopyWith<_$_PemesananEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}

ListPemesanan _$ListPemesananFromJson(Map<String, dynamic> json) {
  return _ListPemesanan.fromJson(json);
}

/// @nodoc
mixin _$ListPemesanan {
  List<Pemesanan> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListPemesananCopyWith<ListPemesanan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPemesananCopyWith<$Res> {
  factory $ListPemesananCopyWith(
          ListPemesanan value, $Res Function(ListPemesanan) then) =
      _$ListPemesananCopyWithImpl<$Res, ListPemesanan>;
  @useResult
  $Res call({List<Pemesanan> values});
}

/// @nodoc
class _$ListPemesananCopyWithImpl<$Res, $Val extends ListPemesanan>
    implements $ListPemesananCopyWith<$Res> {
  _$ListPemesananCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Pemesanan>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListPemesananCopyWith<$Res>
    implements $ListPemesananCopyWith<$Res> {
  factory _$$_ListPemesananCopyWith(
          _$_ListPemesanan value, $Res Function(_$_ListPemesanan) then) =
      __$$_ListPemesananCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pemesanan> values});
}

/// @nodoc
class __$$_ListPemesananCopyWithImpl<$Res>
    extends _$ListPemesananCopyWithImpl<$Res, _$_ListPemesanan>
    implements _$$_ListPemesananCopyWith<$Res> {
  __$$_ListPemesananCopyWithImpl(
      _$_ListPemesanan _value, $Res Function(_$_ListPemesanan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$_ListPemesanan(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Pemesanan>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListPemesanan extends _ListPemesanan {
  _$_ListPemesanan({required final List<Pemesanan> values})
      : _values = values,
        super._();

  factory _$_ListPemesanan.fromJson(Map<String, dynamic> json) =>
      _$$_ListPemesananFromJson(json);

  final List<Pemesanan> _values;
  @override
  List<Pemesanan> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'ListPemesanan(values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListPemesanan &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListPemesananCopyWith<_$_ListPemesanan> get copyWith =>
      __$$_ListPemesananCopyWithImpl<_$_ListPemesanan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListPemesananToJson(
      this,
    );
  }
}

abstract class _ListPemesanan extends ListPemesanan {
  factory _ListPemesanan({required final List<Pemesanan> values}) =
      _$_ListPemesanan;
  _ListPemesanan._() : super._();

  factory _ListPemesanan.fromJson(Map<String, dynamic> json) =
      _$_ListPemesanan.fromJson;

  @override
  List<Pemesanan> get values;
  @override
  @JsonKey(ignore: true)
  _$$_ListPemesananCopyWith<_$_ListPemesanan> get copyWith =>
      throw _privateConstructorUsedError;
}
