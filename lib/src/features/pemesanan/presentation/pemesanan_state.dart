import 'package:flutter_riverpod/flutter_riverpod.dart';

class PemesananState {
  final AsyncValue<bool?> value;

  const PemesananState({
    this.value = const AsyncData(null),
  });

  PemesananState copyWith({
    AsyncValue<bool?>? value,
  }) {
    return PemesananState(
      value: value ?? this.value,
    );
  }

  bool get isLoading => value.isLoading;
}
