

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moci_petcare/src/features/home/domain/jadwal.dart';
import '../application/jadwal_service.dart';

final homeControllerProvider = FutureProvider.autoDispose<Jadwal>((ref) async {
  return ref.read(jadwalServiceProvider).jadwal();
});
