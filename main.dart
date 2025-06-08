
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data/datasource/crypto_remote_datasource.dart';
import 'data/repository/crypto_repository.dart';
import 'viewmodel/crypto_view_model.dart';
import 'view/home_screen.dart';
import 'package:http/http.dart' as http;

void main() {
  final datasource = CryptoRemoteDatasource(client: http.Client());
  final repository = CryptoRepository(datasource: datasource);
  final viewModel = CryptoViewModel(repository: repository);

  runApp(
    ChangeNotifierProvider(
      create: (_) => viewModel..loadCryptos(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );
}
