
# CryptoApp Flutter

Aplicativo Flutter que consome a API da CoinMarketCap para listar criptomoedas com base em critérios definidos.

## 🔧 Funcionalidades

- Arquitetura MVVM: UI, ViewModel, Repository, DataSource.
- Tela de listagem com cotação em USD e BRL.
- Detalhes em modal.
- Pesquisa múltipla por criptos.
- Pull-to-refresh.
- Valores padrão se nenhum símbolo for buscado.

## 🚀 Como rodar

1. Clone ou baixe o projeto.
2. Execute `flutter pub get`.
3. Rode com `flutter run`.

## 🔑 API

Utiliza a API da CoinMarketCap com autenticação via API Key:
```
X-CMC_PRO_API_KEY: SUA_API_KEY
```

Documentação oficial: [CoinMarketCap Docs](https://coinmarketcap.com/api/documentation/v1/)

## 📁 Estrutura

- `lib/data`: DataSource e Repository
- `lib/model`: Modelo da Cripto
- `lib/viewmodel`: Gerenciador de Estado
- `lib/view`: Interface da aplicação
- `lib/main.dart`: Ponto de entrada

---
Feito com ❤️ usando Flutter.
