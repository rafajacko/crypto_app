
class CryptoModel {
  final String name;
  final String symbol;
  final DateTime dateAdded;
  final double priceUSD;
  final double priceBRL;

  CryptoModel({
    required this.name,
    required this.symbol,
    required this.dateAdded,
    required this.priceUSD,
    required this.priceBRL,
  });

  factory CryptoModel.fromJson(Map<String, dynamic> json) {
    final quote = json['quote'];
    return CryptoModel(
      name: json['name'],
      symbol: json['symbol'],
      dateAdded: DateTime.parse(json['date_added']),
      priceUSD: quote['USD']['price'],
      priceBRL: quote['BRL']['price'],
    );
  }
}
