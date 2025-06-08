
import '../../model/crypto_model.dart';
import '../datasource/crypto_remote_datasource.dart';

class CryptoRepository {
  final CryptoRemoteDatasource datasource;

  CryptoRepository({required this.datasource});

  Future<List<CryptoModel>> getCryptos(List<String> symbols) {
    return datasource.fetchCryptos(symbols);
  }
}
