import 'dynamic_extension.dart';

extension XNullableString on String? {
  /// [INFO]
  /// Use this for check if its null or empty
  bool isNullOrEmpty() => !isNotNull() || this == '';
  String get toEmpty => this ?? '-';
}
