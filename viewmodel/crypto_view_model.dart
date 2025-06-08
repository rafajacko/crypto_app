
import 'package:flutter/material.dart';
import '../data/repository/crypto_repository.dart';
import '../model/crypto_model.dart';

class CryptoViewModel extends ChangeNotifier {
  final CryptoRepository repository;

  CryptoViewModel({required this.repository});

  List<CryptoModel> cryptos = [];
  bool isLoading = false;

  Future<void> loadCryptos([List<String>? symbols]) async {
    try {
      isLoading = true;
      notifyListeners();

      final query = symbols?.isNotEmpty == true
          ? symbols
          : ['BTC','ETH','SOL','BNB','BCH','MKR','AAVE','DOT','SUI','ADA','XRP','TIA','NEO','NEAR','PENDLE','RENDER','LINK','TON','XAI','SEI','IMX','ETHFI','UMA','SUPER','FET','USUAL','GALA','PAAL','AERO'];

      cryptos = await repository.getCryptos(query);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
