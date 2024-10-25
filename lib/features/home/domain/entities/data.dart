import 'package:cripto_wallet/features/home/domain/entities/quote.dart';

class Data {
  int? id;
  String? name;
  String? symbol;
  String? slug;
  double? cmcRank;
  double? numMarketPairs;
  double? circulatingSupply;
  double? totalSupply;
  double? maxSupply;
  bool? infiniteSupply;
  String? lastUpdated;
  String? dateAdded;
  List<String>? tags;
  Quote? quote;

  Data(
      {this.id,
      this.name,
      this.symbol,
      this.slug,
      this.cmcRank,
      this.numMarketPairs,
      this.circulatingSupply,
      this.totalSupply,
      this.maxSupply,
      this.infiniteSupply,
      this.lastUpdated,
      this.dateAdded,
      this.tags,
      this.quote});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    cmcRank = double.parse(json['cmc_rank'].toString());
    numMarketPairs = double.parse(json['num_market_pairs'].toString());
    circulatingSupply = double.parse(json['circulating_supply'].toString());
    totalSupply = double.parse(json['total_supply'].toString());
    maxSupply = double.parse(
        json['max_supply'] != null ? json['max_supply'].toString() : "0");
    infiniteSupply = json['infinite_supply'];
    lastUpdated = json['last_updated'];
    dateAdded = json['date_added'];
    tags = json['tags'].cast<String>();
    quote = json['quote'] != null ? Quote.fromJson(json['quote']) : null;
  }
}
