import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/src/services/remote/config/config.dart';

class PemesananApi {
  final DioClient _dioClient;

  PemesananApi(this._dioClient);

  Future<Result<String>> pemesanan() async {
    try {
      final response = await _dioClient.post(
        Endpoint.pemesanan,
        data: {
          'email': "",
        },
      );
      return Result.success(response['accessToken']);
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }
}

final authApiProvider = Provider<PemesananApi>((ref) {
  return PemesananApi(ref.read(dioClientProvider));
});
