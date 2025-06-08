
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../viewmodel/crypto_view_model.dart';

class HomeScreen extends StatelessWidget {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CryptoViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Criptomoedas')),
      body: Column(
        children: [
          TextField(
            controller: searchController,
            decoration: InputDecoration(labelText: 'Buscar moedas (ex: BTC,ETH)'),
          ),
          ElevatedButton(
            onPressed: () {
              final symbols = searchController.text
                  .toUpperCase()
                  .split(',')
                  .map((e) => e.trim())
                  .where((e) => e.isNotEmpty)
                  .toList();
              vm.loadCryptos(symbols);
            },
            child: Text('Buscar'),
          ),
          Expanded(
            child: vm.isLoading
                ? Center(child: CircularProgressIndicator())
                : RefreshIndicator(
                    onRefresh: () => vm.loadCryptos(),
                    child: ListView.builder(
                      itemCount: vm.cryptos.length,
                      itemBuilder: (context, index) {
                        final crypto = vm.cryptos[index];
                        return ListTile(
                          title: Text('\${crypto.symbol} - \${crypto.name}'),
                          subtitle: Text('USD: \$\${crypto.priceUSD.toStringAsFixed(2)} | BRL: R\$ \${crypto.priceBRL.toStringAsFixed(2)}'),
                          onTap: () => showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: Text(crypto.name),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Símbolo: \${crypto.symbol}'),
                                  Text('Adicionado em: \${DateFormat.yMd().format(crypto.dateAdded)}'),
                                  Text('Preço USD: \$\${crypto.priceUSD.toStringAsFixed(2)}'),
                                  Text('Preço BRL: R\$ \${crypto.priceBRL.toStringAsFixed(2)}'),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
