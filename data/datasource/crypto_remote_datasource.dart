
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../model/crypto_model.dart';

const String apiKey = '2e7f18c1-19fc-4fb1-9a9d-99de8eb77b0e';
const String baseUrl = 'https://pro-api.coinmarketcap.com/v2/cryptocurrency/quotes/latest';

class CryptoRemoteDatasource {
  final http.Client client;

  CryptoRemoteDatasource({required this.client});

  Future<List<CryptoModel>> fetchCryptos(List<String> symbols) async {
    final response = await client.get(
      Uri.parse('\$baseUrl?symbol=\${symbols.join(",")}'),
      headers: {
        'Accepts': 'application/json',
        'X-CMC_PRO_API_KEY': apiKey,
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)['data'] as Map<String, dynamic>;
      return data.values.map((e) => CryptoModel.fromJson(e)).toList();
    } else {
      throw Exception('Erro ao buscar criptomoedas');
    }
  }
}
