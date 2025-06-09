# 📱 App de Cotação de Criptomoedas com Flutter

Um aplicativo desenvolvido em Flutter que exibe cotações das principais criptomoedas em tempo real, consumindo a API da CoinMarketCap. O projeto foi estruturado utilizando a arquitetura **MVVM+R** para garantir um código limpo, escalável e testável.

---

## ✨ Funcionalidades

- **Listagem em Tempo Real:** Exibe as principais criptomoedas com dados atualizados.
- **Cotação Dupla:** Mostra os preços em Dólar (USD) e Real (BRL).
- **Taxa de Conversão Dinâmica:** Busca a taxa de câmbio USD/BRL em tempo real.
- **Atualização de Dados:**
  - Gesto de *Pull-to-Refresh*.
  - Botão de atualização no topo da tela.
- **Pesquisa Avançada:** Campo de busca por símbolo (ex: `BTC`, `ETH`).
- **Detalhes da Moeda:** Exibe símbolo, data de adição, valores formatados.
- **Interface Reativa:** Lida com estados de *loading*, sucesso e erro.

---

## 🧠 Arquitetura

Este projeto utiliza uma arquitetura limpa, baseada em **MVVM (Model-View-ViewModel)**, com as camadas adicionais de **Repository** e **DataSource**.

### 🔁 Fluxo de Dados

`View → ViewModel → Repository → DataSource → API Externa`

- **View:** Apresentação da UI e interação com o usuário.
- **ViewModel:** Gerencia o estado da UI e se comunica com o Repository.
- **Repository:** Intermediário que organiza o acesso aos dados e implementa a lógica.
- **DataSource:** Responsável por se comunicar diretamente com a API.

---

## 🚀 Tecnologias e Pacotes

- [Flutter](https://flutter.dev): Framework principal.
- [Dart](https://dart.dev): Linguagem de programação.
- [provider](https://pub.dev/packages/provider): Gerenciamento de estado e injeção de dependência.
- [http](https://pub.dev/packages/http): Chamadas HTTP.
- [intl](https://pub.dev/packages/intl): Formatação de moeda e data.

---

## ⚙️ Como Executar o Projeto

### ✅ Pré-requisitos

- Ter o Flutter SDK instalado.
- Um editor como [VS Code](https://code.visualstudio.com/) ou [Android Studio](https://developer.android.com/studio).
- Um emulador Android ou dispositivo físico.

### 🛠️ Passos

1. Clone o repositório:

```bash
git clone https://github.com/SeuUsuario/flutter-cripto-broker
cd flutter-cripto-broker
```
2. Instale as dependências:

```bash
flutter pub get
```
3. Configure sua chave da API:
```bash
⚠️ IMPORTANTE: Este projeto requer uma chave de API da CoinMarketCap.
Acesse https://pro.coinmarketcap.com/ e crie uma conta gratuita.
Edite o arquivo lib/data/datasources/crypto_datasource.dart:

 // Antes:
 const String _apiKey = 'SUA_NOVA_CHAVE_API_AQUI';

 // Depois:
 const String _apiKey = 'XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX';
```
4. Execute o aplicativo:
```bash
flutter run
```
