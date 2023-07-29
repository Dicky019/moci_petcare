import 'dynamic_extension.dart';

extension XNullableString on String? {
  /// [INFO]
  /// Use this for check if its null or empty
  bool get isNullOrEmpty => !isNotNull || this == '';
  String get toEmpty => this ?? '-';
}

extension XString on String {
  /// [INFO]
  /// Use this for check if its null or empty
  String get displayJam {
    final jam = split("jam").join("").split("_").map((v) => '$v.00').join("-");
    return jam;
  }
}
