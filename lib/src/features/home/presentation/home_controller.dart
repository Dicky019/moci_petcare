import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moci_petcare/src/features/home/domain/jadwal.dart';
import '../application/jadwal_service.dart';

final homeControllerProvider = FutureProvider<Jadwal>((ref) async {
  final getAlljadwal = await ref.read(jadwalServiceProvider).jadwal();
  
  return getAlljadwal.when(
    success: (data) => data,
    failure: (error, stackTrace) {
      return const Jadwal.empty();
    },
  );
});
