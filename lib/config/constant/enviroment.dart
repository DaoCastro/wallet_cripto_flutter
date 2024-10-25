import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  static initEnviroment() async {
    await dotenv.load(fileName: ".env");
  }

  static String apiAvatarUrl = dotenv.env["URL_API_AVATAR_GENERATOR"] ??
      'not found URL_API_AVATAR_GENERATOR';

  static String apiCoinmarketcap =
      dotenv.env["URL_API_COINMARKETCAP"] ?? 'not found URL_API_COINMARKETCAP';

  static String apiKeyCoinmarketcap =
      dotenv.env["API_KEY_COINMARKETCAP"] ?? 'not found API_KEY_COINMARKETCAP';

  static String urlLogoCripto = dotenv.env["URL_LOGO_CRIPTO"] ?? '';
}
